using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ResetDataBase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Button1.Enabled = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        UpdatePanel1.Update();
        MyTimer.Enabled = true;
        Button1.Enabled = false;
        string connStr = ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString.ToString();
        SqlConnection myConn = new SqlConnection(connStr);
        try
        {
            myConn.Open();
            //myCommand.ExecuteNonQuery();
            // MessageBox.Show("DataBase is Created Successfully", "MyProgram", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        catch (System.Exception ex)
        {
            int x = 0;
            //            MessageBox.Show(ex.ToString(), "MyProgram", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        finally
        {
            if (myConn.State == ConnectionState.Open)
            {
                BaseballTables.DropAndCreateTables(myConn);
                myConn.Close();
            }
        }
    }
    protected void MyTimer_Tick(object sender, EventArgs e)
    {
        UpdatePanel1.Update();
        Label1.Text = BaseballTables.OutputText1;
        Label2.Text = BaseballTables.OutputText2;
    }
}