using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Baseball : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void EntityDataSource1_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
    {
        var db = new Entities();
        e.Context = (db as IObjectContextAdapter).ObjectContext;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        EntityDataSource1.WhereParameters.Clear();
        EntityDataSource1.WhereParameters.Add("birthCity", TypeCode.String, TextBox1.Text);
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        EntityDataSource1.WhereParameters.Clear();
        EntityDataSource1.WhereParameters.Add("birthCountry", TypeCode.String, TextBox2.Text);
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        EntityDataSource1.WhereParameters.Clear();
        EntityDataSource1.WhereParameters.Add("nameLast", TypeCode.String, TextBox3.Text);
    }
}