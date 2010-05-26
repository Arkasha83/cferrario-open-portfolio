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
    protected String GetModified()
    {
        String sourceFile = Server.MapPath("./StatSeasonRockers-2010.xls");
        System.IO.FileInfo file = new System.IO.FileInfo(sourceFile);
        return "Last Modified " + file.LastWriteTime.ToString();
    }

    protected void FillGrid( String range, GridView gV, String expression )
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

        string SQLString = "Select * from [" + range + "]";
        OleDbCommand DBCommand = new OleDbCommand(SQLString, DBConnection);
        IDataReader DBReader = DBCommand.ExecuteReader();
        DataTable table = new DataTable();
        table.Load(DBReader);
        int max = table.Rows.Count;
        for (int i = 0; i < max; i++)
        {
            DataRow row = table.Rows[i];
            string s = row.ItemArray[0].ToString();
            if (s.Equals(""))
            {
                row.Delete();
            }
        }
        gV.Columns.Clear();
        for (int i = 0; i < table.Columns.Count; i++)
        {
            DataColumn col = table.Columns[i];
            BoundField nameColumn = new BoundField();
            nameColumn.DataField = col.ColumnName;
            nameColumn.HeaderText = col.ColumnName.ToLower();
            nameColumn.SortExpression = col.ColumnName;
            nameColumn.ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            if (i > table.Columns.Count - 6)
                nameColumn.DataFormatString = "{0:f3}";
            gV.Columns.Add(nameColumn);
        }
        table.DefaultView.Sort = expression;
        gV.DataSource = table;
        gV.DataBind();

        DBReader.Close();
        DBConnection.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        FillGrid("Totals$B5:AA30" , GridView1, "" );
        FillGrid("Totals$B36:AA47", GridView2, "" );
    }

    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        FillGrid("Totals$B5:AA30", GridView1, e.SortExpression + " desc");
    }
    protected void GridView2_Sorting(object sender, GridViewSortEventArgs e)
    {
        FillGrid("Totals$B36:AA47", GridView2, e.SortExpression + " desc");
    }
}



 
