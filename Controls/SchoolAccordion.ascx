<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SchoolAccordion.ascx.cs" Inherits="Controls_DynamicAccordion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="~/Controls/MySlideShow.ascx"   TagName="MySlideShow"   TagPrefix="myControls" %>

<ajaxToolkit:Accordion ID="BaseAccordion" runat="server" HeaderSelectedCssClass="accordionHeaderSelected"
                    SelectedIndex="-1" HeaderCssClass="accordionHeader" ContentCssClass="accordionContent"
                    FadeTransitions="True" TransitionDuration="250" FramesPerSecond="40"
                    RequireOpenedPane="False" SuppressHeaderPostbacks="True" meta:resourcekey="BaseAccordionResource" >
     <Panes>
        <ajaxToolkit:AccordionPane ID="Toc" runat="server" ContentCssClass="" HeaderCssClass="">
            <Header>
                 <a href="" onclick="return false;">Toc</a>
            </Header>
            <Content>
                <table style="width:96%">
                    <tr>
                        <td valign="top">
                            <asp:Localize runat="server" 
                                ID="TocText" 
                                meta:resourcekey="TocResource">
                            </asp:Localize>
                        </td>
                        <td style="width:200px" align="center">
                            <myControls:MySlideShow runat="server" ID="TocSlideShow" Type="Toc" />
                        </td>
                    </tr>
                </table>
            </Content>
        </ajaxToolkit:AccordionPane>
        <ajaxToolkit:AccordionPane ID="Starball" runat="server" ContentCssClass="" HeaderCssClass="" meta:resourcekey="StarballResource1">
            <Header>
                <a href="" onclick="return false;">Starball</a>
            </Header>
            <Content>
                <table style="width:96%">
                    <tr>
                        <td valign="top">
                            <asp:Localize runat="server" 
                                ID="StarballText" 
                                meta:resourcekey="StarballResource">
                            </asp:Localize>
                        </td>
                        <td style="width:200px" align="center">
                            <myControls:MySlideShow runat="server" ID="StarballSlideShow" Type="Starball" />
                        </td>
                    </tr>
                </table>
            </Content>
        </ajaxToolkit:AccordionPane>
        </Panes>
</ajaxToolkit:Accordion>