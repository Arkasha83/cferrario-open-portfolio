<%@ WebService Language="C#" Class="SlideService2" %>

using AjaxControlToolkit;
using System;
using System.IO;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService()]
public class SlideService2  : System.Web.Services.WebService {

    [WebMethod]
    public Slide[] GetSlidesBio()
    {
        return GetSlides("img/ss/bio/");
    }
    
    [WebMethod]
    public Slide[] GetSlidesNowhere()
    {
        return GetSlides("img/ss/nowhere/");
    }

    [WebMethod]
    public Slide[] GetSlidesSpiderwick()
    {
        return GetSlides("img/ss/spiderwick/");
    }

    [WebMethod]
    public Slide[] GetSlidesLanders()
    {
        return GetSlides("img/ss/landers/");
    }

    [WebMethod]
    public Slide[] GetSlidesHolyWars()
    {
        return GetSlides("img/ss/holywars/");
    }

    [WebMethod]
    public Slide[] GetSlidesCrash()
    {
        return GetSlides("img/ss/crash/");
    }


    [WebMethod]
    public Slide[] GetSlidesToc()
    {
        return GetSlides("img/ss/toc/");
    }


    [WebMethod]
    public Slide[] GetSlidesStarball()
    {
        return GetSlides("img/ss/starball/");
    }

    [WebMethod]
    public Slide[] GetSlidesBarbu()
    {
        return GetSlides("img/ss/barbu/");
    }

    [WebMethod]
    public Slide[] GetSlidesTorque()
    {
        return GetSlides("img/ss/torque/");
    }

    [WebMethod]
    public Slide[] GetSlidesXNA()
    {
        return GetSlides("img/ss/xna/");
    }

    [WebMethod]
    public Slide[] GetSlidesSpooks()
    {
        return GetSlides("img/ss/spooks/");
    }

    [WebMethod]
    public Slide[] GetSlidesAndroid()
    {
        return GetSlides("img/ss/androidtetris/");
    }

    [WebMethod]
    public Slide[] GetSlidesDS()
    {
        return GetSlides("img/ss/ds/");
    }

    [WebMethod]
    public Slide[] GetSlidesFallout()
    {
        return GetSlides("img/ss/fallout/");
    }

    [WebMethod]
    public Slide[] GetSlidesMyhero()
    {
        return GetSlides("img/ss/myhero/");
    }
    

    [WebMethod]
    private Slide[] GetSlides(String path)
    {

        FileInfo[] list = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory + path).GetFiles();
        Slide[] slides = new Slide[list.Length];
        for (int i = 0; i < list.Length; i++ )
        {
            slides[i] = new Slide(path + list[i].Name, list[i].Name, "");
        }
        return slides;
    }
}

