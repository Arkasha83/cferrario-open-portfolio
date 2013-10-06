using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Projects : Page
{
    private List<Button> selectedButtons = new List<Button>();
    private System.Drawing.Color SaveColor;

    protected void Page_Load(object sender, EventArgs e)
    {
        //HtmlGenericControl body = (HtmlGenericControl)Page.Master.FindControl("pagebody");
        //body.Attributes.Add("onload", "CheckAlert();");
        if (IsPostBack)
        {
            GridView1.DataBind();
            Control control = null;
            //first we will check the "__EVENTTARGET" because if post back made by       the controls
            //which used "_doPostBack" function also available in Request.Form collection.
            string ctrlname = Page.Request.Params["__EVENTTARGET"];
            if (ctrlname != null && ctrlname != String.Empty)
            {
                control = Page.FindControl(ctrlname);
                Button btn = (Button)control;
                if (btn != null)
                {
                    if (selectedButtons.Contains(btn))
                    {
                        selectedButtons.Remove(btn);
                    }
                    else
                    {
                        selectedButtons.Add(btn);
                    }
                }
            }
        }
        else
        {
            SaveColor = Button1.BackColor;
        }

        Highlitable(Page.Controls);
    }
    protected void Highlitable(System.Web.UI.ControlCollection controls)
    {
        foreach (Control ctrl in controls)
        {
            if (ctrl.Controls.Count > 0) 
                Highlitable(ctrl.Controls);
            if ("Button".Equals(ctrl.GetType().Name, StringComparison.OrdinalIgnoreCase))
            {
                Button btn = (Button)ctrl;
                if (selectedButtons.Contains(btn))
                {
                    btn.BackColor = System.Drawing.Color.LightBlue;
                    btn.Font.Bold = true;
                }
                else
                {
                    btn.BackColor = SaveColor;
                    btn.Font.Bold = false;
                }
            }
        }
    }
    protected void ButtonSkill_Click(object sender, EventArgs e)
    {
        EntityDataSource1.WhereParameters["Skill"].DefaultValue = ((Button)sender).Text.Equals("ALL") ? "-" : ((Button)sender).Text;
    }
    protected void EntityDataSource1_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
    {
        var db = new Entities();
        e.Context = (db as IObjectContextAdapter).ObjectContext;
    }
    protected void GridView1_DataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            project dataRow = (project)e.Row.DataItem;
            String imgText = e.Row.Cells[0].Text;
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
            l1.Text = "<font color='blue'>" + dataRow.name + "</font>";
            l1.Font.Bold = true;
            l1.Font.Size = 14;

            l2.Text = dataRow.company + " - " + dataRow.year;
            l2.Font.Bold = true;
            l2.Font.Size = 11;

            l3.Text = getDesc(dataRow.name);
            l3.Font.Size = 10;

            l4.Text = dataRow.skills.Replace("-", " - ");
            l4.Font.Italic = true;
            l4.Font.Size = 9;
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
            last.Text = getDesc(dataRow.name + "_2");
            e.Row.Cells[2].Controls.Clear();
            e.Row.Cells[2].Controls.Add(last);
        }
    }

    private String getDesc(String name)
    {
        String find = name.Replace(" ", "_");
        find = find.Replace(":", "-");
        object obj = GetLocalResourceObject(find);
        if (obj != null)
            return obj.ToString();
        else
            return find;
    }
}