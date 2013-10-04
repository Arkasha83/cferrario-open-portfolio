using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Entity;
using System.IO;
using System.Web.UI.WebControls;
using System.Web.UI;

/// <summary>
/// Summary description for BaseballTables
/// </summary>
public class BaseballTables
{
    public static DateTime startTime = DateTime.Now;
    public static String OutputText1 = "";
    public static String OutputText2 = "";

	public BaseballTables()
    {
        OutputText1 = "";
        OutputText2 = "";
	}

    private static int DropAndCreate(SqlConnection connection, String name, string[] fields)
    {
        new SqlCommand("if (OBJECT_ID('"+name+"') >0 ) DROP TABLE " + name, connection).ExecuteNonQuery();
        string str = "CREATE TABLE " + name + "( ID int IDENTITY(1,1) PRIMARY KEY,";
        for (int i = 0; i < fields.Length; i++)
        {
            str += "\"" + fields[i] + "\" varchar(100)";
            if (i < fields.Length - 1)
                str += ",";
        }
        str += " )";
        return new SqlCommand(str, connection).ExecuteNonQuery(); ;
    }

    private static string Insert( string[] fields)
    {
        //INSERT INTO USERS VALUES (1, 'Mike', 'Jones');
        string str = "(";
        for (int i = 0; i < fields.Length; i++)
        {
            str += "'" + fields[i] + "'";
            if (i < fields.Length - 1)
                str += ",";
        }
        str += ")";
        return str;
    }

    public static string[] ParseLine(string line)
    {
        var insideQuotes = false;

        var parts = new List<string>();

        var j = 0;
        var i = 0;
        for (; i < line.Length; i++)
        {
            switch (line[i])
            {
                case '|':
                    insideQuotes = !insideQuotes;
                    break;
                case ',':
                    if (!insideQuotes)
                    {
                        parts.Add(line.Substring(j, i - j).Replace(",", "-"));
                        j = i + 1;
                    }
                    break;
                default:
                    continue;
            }
        }

        parts.Add(line.Substring(j, i - j));

        return parts.ToArray();
    }


    public static void DropAndCreateTables(SqlConnection connection )
    {
        int result;
        startTime = DateTime.Now;

        // the first lines of each csv file has the field info for the DB
        string[] directories = Directory.GetFiles(HttpContext.Current.Server.MapPath("~/csv"));
        int tableID = 0;
        foreach (string s in directories)
        {
            string ext = Path.GetExtension(s);
            string tableName = Path.GetFileNameWithoutExtension(s);

            OutputText1 = "Handling table #" + (tableID+1) + " " + tableName + " out of " + directories.Length + " tables";
            
            tableID++;
            if (ext.Equals(".csv"))
            {
                using (StreamReader readFile = new StreamReader(s))
                {
                    var lineCount = File.ReadLines(s).Count();
                    string firstLine = readFile.ReadLine();
                    string[] tablewords = firstLine.Split(',');
                    int tableLen = tablewords.Length;

                    // create table
                    result = DropAndCreate(connection, tableName, tablewords);

                    // insert values
                    string line;
                    //INSERT INTO USERS VALUES
                    //(2, 'Michael', 'Blythe'),
                    //(3, 'Linda', 'Mitchell'),
                    //(4, 'Jillian', 'Carson'),
                    //(5, 'Garrett', 'Vargas');
                    int entries = 0;
                    int totalEntries = 0;

                    string str = "INSERT INTO " + tableName + " VALUES";
                    bool startWithComma = false;
                    while ((line = readFile.ReadLine()) != null)
                    {
                        if (startWithComma) str += ",";

                        //some specific handling is needed because of weird stuff
                        line = line.Replace("'", "*");
                        line = line.Replace("\"", "|");
                        string[] words = ParseLine(line);
                        int entryLen = words.Length;

                        str += Insert(words);
                        startWithComma = true;
                        entries++;

                        // quick dirty reset need to redo the loop!
                        if (entries >= 1000)
                        {
                            entries = 0;
                            str += ";";
                            result = new SqlCommand(str, connection).ExecuteNonQuery();
                            str = "INSERT INTO " + tableName + " VALUES";
                            startWithComma = false;
                        }

                        totalEntries++;
                        OutputText2 = "Handling entry #" + (totalEntries+1) + " out of " + lineCount + " entries";
                    }
                    if (entries != 0)
                    {
                        str += ";";
                        result = new SqlCommand(str, connection).ExecuteNonQuery();
                    }

                }
            }
        }
        
      
    }
}