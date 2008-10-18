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

public partial class Controls_MySlideShow : System.Web.UI.UserControl
{

    internal String _type;
    public String Type { get { return _type; } set { _type = value; UpdateSlideShowMethod(); } }

    internal void UpdateSlideShowMethod()
    {
        if(Type.Equals("Nowhere"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesNowhere";
        else if (Type.Equals("Spiderwick"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesSpiderwick";
        else if (Type.Equals("Landers"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesLanders";
        else if (Type.Equals("HolyWars"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesHolyWars";
        else if (Type.Equals("Crash"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesCrash";
        else if (Type.Equals("Bio"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesBio";
        else if (Type.Equals("Toc"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesToc";
        else if (Type.Equals("Starball"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesStarball";
        else if (Type.Equals("Barbu"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesBarbu";
        else if (Type.Equals("XNA"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesXNA";
        else if (Type.Equals("Torque"))
            SlideShowExtender1.SlideShowServiceMethod = "GetSlidesTorque";
        
    }

    internal void Page_Load(object sender, EventArgs e)
    {
    }
}