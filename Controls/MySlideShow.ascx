<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MySlideShow.ascx.cs" Inherits="Controls_MySlideShow" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


        <asp:Image ID="SlideImage" runat="server" Width="176px" ImageUrl="~/img/ss/no-image.png" AlternateText="Coming soon..."/>
        <asp:Button ID="prevButton" runat="server" Text="Prev" CssClass="vcrButton"/>
        <asp:Button ID="playButton" runat="server" Text="Play" CssClass="vcrButton"/>
        <asp:Button ID="nextButton" runat="server" Text="Next" CssClass="vcrButton"/>
        <ajaxToolkit:SlideShowExtender ID="SlideShowExtender1" 
                                runat="server" 
                                TargetControlID="SlideImage" 
                                PreviousButtonID="prevButton"
                                NextButtonID="nextButton"
                                PlayButtonID="playButton"
                                PlayButtonText="Play"
                                StopButtonText="Stop"
                                SlideShowServicePath="~/SlideService2.asmx" 
                                Enabled="true"
                                Loop="true"
                                AutoPlay="true"/>