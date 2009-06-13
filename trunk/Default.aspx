<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Src="~/Controls/MyAccordion.ascx"   TagName="MyAccordion"   TagPrefix="uc1" %>
<%@ Register Src="~/Controls/SchoolAccordion.ascx"   TagName="SchoolAccordion"   TagPrefix="uc1" %>
<%@ Register Src="~/Controls/CodeAccordion.ascx"   TagName="CodeAccordion"   TagPrefix="uc1" %>
<%@ Register Src="~/Controls/PersonalAccordion.ascx"   TagName="PersonalAccordion"   TagPrefix="uc1" %>
<%@ Register Src="~/Controls/LocaleChooser.ascx" TagName="LocaleChooser" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/MySlideShow.ascx" TagName="SlideShow" TagPrefix="uc1" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="css/cv.css" rel="stylesheet" type="text/css" />
    <link href="css/TabsStyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" />

        <!--    <div style="text-align:right;"><uc1:LocaleChooser ID="LocaleChooser" runat="server"  /></div>-->
        
        <div style="text-align:center;"><img src="img/chrisflogo.png" alt=""/><br /><br /><br /></div>
        
        <div>
            <asp:UpdatePanel runat="server" ID="MainUpdate">
                <ContentTemplate>
                    <cc1:TabContainer 
                                CssClass="ajax__tab_yuitabview-theme"
                                ID="TabContainer1" runat="server" 
                                ActiveTabIndex="0"			
                                meta:resourcekey="TabContainer1Resource1">
                        <cc1:TabPanel ID="TabPanel1" runat="server" 
                                    meta:resourcekey="TabPanel1Resource1">
                            <ContentTemplate>
                                <table>
                                    <tr>
                                        <td style="width:200px;text-align:center;vertical-align:top;padding-top:60px;">
                                            <uc1:SlideShow runat="server" ID="BioSlides" Type="Bio"/>
                                        </td>
                                        <td>
                                            <asp:Localize runat="server"
                                            ID="BioText"
                                            meta:resourcekey="BioRsc">
                                            </asp:Localize>
                                        </td>
                                    </tr>
                                </table>
                                <div style="text-align:center;">
                                    <img src="img/chucksays.jpg" alt="Image currently down" />
                                </div>
                            </ContentTemplate>
                        </cc1:TabPanel>
                        <cc1:TabPanel ID="TabPanel2" runat="server" 
                                    meta:resourcekey="TabPanel2Resource1">
                            <ContentTemplate>
                                <uc1:MyAccordion id="MyAccordion1" runat="server"/>
                            </ContentTemplate>
                        </cc1:TabPanel>
                        <cc1:TabPanel ID="TabPanel3" runat="server" 
                                    meta:resourcekey="TabPanel3Resource1">
                            <ContentTemplate>
                                <uc1:SchoolAccordion ID="SchoolAccordion" runat="server" />
                            </ContentTemplate>
                        </cc1:TabPanel>
                        <cc1:TabPanel ID="TabPanel4" runat="server" 
                                meta:resourcekey="TabPanel4Resource1">
                            <ContentTemplate>
                                <uc1:PersonalAccordion ID="PersonalAccordion" runat="server" />
                            </ContentTemplate>
                        </cc1:TabPanel>
                        <cc1:TabPanel ID="TabPanel6" runat="server" 
                                meta:resourcekey="TabPanel6Resource1">
                            <ContentTemplate>
                                <uc1:CodeAccordion ID="CodeAccordion" runat="server" />
                            </ContentTemplate>
                        </cc1:TabPanel>
                        <cc1:TabPanel ID="TabPanel5" runat="server" 
                                meta:resourcekey="TabPanel5Resource1">
                            <ContentTemplate>
                                <asp:xml runat="server" id="xmlDisp" />
                                <br />
                                <br />
                                <center>
                                <a href="download/Resume.doc">Resume in Word format</a>
                                </center>
                                <br />
                                <br />
                            </ContentTemplate>
                        </cc1:TabPanel>
                    </cc1:TabContainer>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
