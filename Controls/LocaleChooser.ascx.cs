using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Globalization;

public partial class LocaleChooser : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["lang"] != null && DropDownList1 != null)
                for (int i = 0; i < DropDownList1.Items.Count; i++)
                {
                    if (DropDownList1.Items[i].Value.ToString().Equals(Session["lang"].ToString()))
                    {
                        DropDownList1.SelectedIndex = i;
                    }
                }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["lang"] = DropDownList1.SelectedValue.ToString();

        //Force re-initialization of the page to fire InitializeCulture()
        Response.Redirect(Request.Url.LocalPath);
    }
}
