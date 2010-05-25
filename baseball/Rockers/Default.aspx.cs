using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;

public partial class baseball_Rockers_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String sourceFile = Server.MapPath("./StatSeasonRockers-2010.xls");
        // Create connection string variable. Modify the "Data Source"
        // parameter as appropriate for your environment.
        String sConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;" +
            "Data Source=" + sourceFile + ";" +
            "Extended Properties=Excel 8.0;";

        // Create connection object by using the preceding connection string.
        OleDbConnection DBConnection = new OleDbConnection(sConnectionString);

        // Open connection with the database.
        DBConnection.Open();

        string SQLString = "Select * from [Totals$B5:AA30]";
        OleDbCommand DBCommand = new OleDbCommand(SQLString, DBConnection);
        IDataReader DBReader = DBCommand.ExecuteReader();
        GridView1.DataSource = DBReader;
        GridView1.DataBind();

        string SQLString2 = "Select * from [Totals$B36:AA47]";
        OleDbCommand DBCommand2 = new OleDbCommand(SQLString2, DBConnection);
        IDataReader DBReader2 = DBCommand2.ExecuteReader();
        GridView2.DataSource = DBReader2;
        GridView2.DataBind();

        DBReader.Close();
        DBConnection.Close();
    }
}



 
