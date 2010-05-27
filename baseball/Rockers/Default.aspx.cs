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
using AjaxControlToolkit;

public partial class baseball_Rockers_Default : System.Web.UI.Page
{
    String sourceFile;
    String sConnectionString;

    protected String GetModified()
    {
        System.IO.FileInfo file = new System.IO.FileInfo(sourceFile);
        return "Last Modified " + file.LastWriteTime.ToString();
    }

    private String[] GetExcelSheetNames()
    {
        OleDbConnection objConn = null;
        System.Data.DataTable dt = null;

        try
        {
            objConn = new OleDbConnection(sConnectionString);
            // Open connection with the database.

            objConn.Open();
            // Get the data table containg the schema guid.

            dt = objConn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);

            if (dt == null)
            {
                return null;
            }

            int count = dt.Rows.Count;
            String[] excelSheets = new String[ count-1 ];

            // Add the sheet name to the string array.

            foreach (DataRow row in dt.Rows)
            {
                String s = row["TABLE_NAME"].ToString();
                s = s.Replace("'", "");
                s = s.Replace("$", "");

                if( s.Contains("Total") )
                    excelSheets[ 0 ] = s;
                else if (s.Contains("Game"))
                {
                    String index = s.Replace("Game", "");
                    index = index.Replace(" ", "");
                    Int32 i = System.Convert.ToInt32(index, 10);
                    excelSheets[i] = s;
                }
            }

            return excelSheets;
        }
        catch (Exception ex)
        {
            return null;
        }
        finally
        {
            // Clean up.

            if (objConn != null)
            {
                objConn.Close();
                objConn.Dispose();
            }
            if (dt != null)
            {
                dt.Dispose();
            }
        }
    }

    protected String GetOpp(String sheet)
    {
        // Create connection object by using the preceding connection string.
        OleDbConnection DBConnection = new OleDbConnection(sConnectionString);

        // Open connection with the database.
        DBConnection.Open();

        string SQLString = "Select * from [" + sheet + "$A1:A2]";
        OleDbCommand DBCommand = new OleDbCommand(SQLString, DBConnection);
        IDataReader DBReader = DBCommand.ExecuteReader();
        DataTable table = new DataTable();
        table.Load(DBReader);
        String s=table.Columns[0].ColumnName;
        DBReader.Close();
        DBConnection.Close();
        return s;
    }

    protected void FillGrid( String range, GridView gV, String expression )
    {
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

    protected void Page_Init(object sender, EventArgs e)
    {
        sourceFile = Server.MapPath("./StatSeasonRockers-2010.xls");
        // Create connection string variable. Modify the "Data Source"
        // parameter as appropriate for your environment.
        sConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;" +
            "Data Source=" + sourceFile + ";" +
            "Extended Properties=Excel 8.0;";

        String[] sheets = GetExcelSheetNames();

        TabContainer tbContainer = new TabContainer();
        for (int sheet = 0; sheet < sheets.Length; sheet++ )
        {
            string s = sheets[sheet];

            Label opp = new Label();
            opp.Text = GetOpp( s );

            // Load the control that contains the gridview
            GridView g1 = new GridView();
            g1.GridLines = GridLines.None;
            g1.CssClass = "mGrid";
            g1.AlternatingRowStyle.CssClass = "alt";
            g1.Caption = "Hitting Stats";
            g1.AllowSorting = true;
            g1.Sorting += GridView1_Sorting;
            g1.AutoGenerateColumns = false;
            g1.ToolTip = s;
            FillGrid(s + "$B5:AA30", g1, "");

            GridView g2 = new GridView();
            g2.GridLines = GridLines.None;
            g2.CssClass = "mGrid";
            g2.AlternatingRowStyle.CssClass = "alt";
            g2.Caption = "Pitching Stats";
            g2.AllowSorting = true;
            g2.Sorting += GridView2_Sorting;
            g2.AutoGenerateColumns = false;
            g1.ToolTip = s;
            FillGrid(s + "$B36:AA47", g2, "");

            TabPanel tpPanel = new TabPanel();
            tpPanel.EnableViewState = false;
            tpPanel.Controls.Add(opp);
            tpPanel.Controls.Add(g1);
            tpPanel.Controls.Add(g2);
            tpPanel.HeaderText = s;
            tbContainer.Controls.Add(tpPanel);
            holder.Controls.Add(tbContainer);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        GridView g = (GridView)sender;
        FillGrid(g.ToolTip+"$B5:AA30", g, e.SortExpression + " desc");
    }
    protected void GridView2_Sorting(object sender, GridViewSortEventArgs e)
    {
        GridView g = (GridView)sender;
        FillGrid(g.ToolTip + "$B36:AA47", g, e.SortExpression + " desc");
    }
}



 
