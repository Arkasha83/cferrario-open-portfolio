using System;
using System.IO;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Threading;
using System.Globalization;

public partial class _Default : System.Web.UI.Page
{
    #region InitializeCulture
    protected override void InitializeCulture()
    {
        string UserCulture;
        if (Session["lang"] != null && Session["lang"].ToString() != "")
            UserCulture = Session["lang"].ToString();
        else
            UserCulture = "en-US";
        System.Threading.Thread.CurrentThread.CurrentUICulture = new CultureInfo(UserCulture);
        System.Threading.Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(UserCulture);

        base.InitializeCulture();
    }
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        LoadCV();
    }

    #region CVfunctions
    private String defaultCvPath = "~/xml/cv-en-US.xml";
    private String defaultCvXSLPath = "~/xml/cv.xsl";
    protected void LoadCV()
    {
        this.Page.ClientScript
            .RegisterClientScriptInclude(
                this.GetType(), 
                "Global",
                this.ResolveClientUrl("js/CollapsibleRows.js"));


        String xmlPath = "~/xml/cv-" + System.Threading.Thread.CurrentThread.CurrentCulture.ToString() + ".xml";

        if (!new FileInfo(Server.MapPath(xmlPath)).Exists)
            xmlPath = defaultCvPath;

        System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
        doc.Load(Server.MapPath(xmlPath));
        System.Xml.Xsl.XslTransform trans = new System.Xml.Xsl.XslTransform();
        trans.Load(Server.MapPath(defaultCvXSLPath));
        xmlDisp.Document = doc;
        xmlDisp.Transform = trans;
    }
    #endregion

    #region GetSlides
    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.Slide[] GetSlides(string contextKey)
    {
        return default(AjaxControlToolkit.Slide[]);
    }
    #endregion

}