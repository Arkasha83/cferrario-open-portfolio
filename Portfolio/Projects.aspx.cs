using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Projects : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/App_Data/Projects.xml"));
        this.GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_DataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dataRow = (DataRowView)e.Row.DataItem;
            string imgText = e.Row.Cells[0].Text;
            e.Row.Cells[0].Controls.Clear();
            Image img = new Image();
            img.ImageUrl = (imgText);
            img.Width = 160;
            e.Row.Cells[0].Controls.Add(img);
            
            e.Row.Cells[1].Controls.Clear();

            Label l1 = new Label();
            Label l2 = new Label();
            Label l3 = new Label();
            Label l4 = new Label();
            l1.Text = "<font color='blue'>" + dataRow["name"] + "</font>";
            l1.Font.Bold = true;
            l1.Font.Size = 18;

            l2.Text = dataRow["company"] + " - " + dataRow["year"];
            l2.Font.Bold = true;
            l2.Font.Size = 14;

            l3.CssClass = "justify";
            l3.Text = GetDesc(dataRow["name"].ToString());
            l3.Font.Size = 12;

            l4.Text = dataRow["skills"].ToString().Replace("-", " - ") + "</br></br>";
            l4.Font.Italic = true;
            l4.Font.Size = 10;
            l4.Font.Bold = true;

            Panel p1 = new Panel();
            Panel p2 = new Panel();
            Panel p3 = new Panel();
            Panel p4 = new Panel();
            //p1.Height = 20;
            //p2.Height = 20;
            //p3.Height = 100;
            //p4.Height = 40;
            p1.Controls.Add(l1);
            p2.Controls.Add(l2);
            p3.Controls.Add(l3);
            p4.Controls.Add(l4);
            e.Row.Cells[1].Controls.Add(p1);
            e.Row.Cells[1].Controls.Add(p2);
            e.Row.Cells[1].Controls.Add(p3);
            e.Row.Cells[1].Controls.Add(p4);
            
            Label last = new Label();
            last.Width = 100;
            last.Text = GetDesc(dataRow["name"] + "_extra");
            e.Row.Cells[2].Controls.Clear();
            e.Row.Cells[2].Controls.Add(last);
        }
    }

    private string GetDesc(String name)
    {
        string find = name.Replace(" ", "_");
        find = find.Replace(":", "-");
        object obj = GetLocalResourceObject(find);
        if (obj != null)
            return obj.ToString();
        else
            return find;
    }
}