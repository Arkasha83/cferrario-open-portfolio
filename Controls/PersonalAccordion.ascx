<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PersonalAccordion.ascx.cs" Inherits="Controls_DynamicAccordion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="~/Controls/MySlideShow.ascx"   TagName="MySlideShow"   TagPrefix="myControls" %>

<ajaxToolkit:Accordion ID="BaseAccordion" runat="server" HeaderSelectedCssClass="accordionHeaderSelected"
                    SelectedIndex="-1" HeaderCssClass="accordionHeader" ContentCssClass="accordionContent"
                    FadeTransitions="True" TransitionDuration="250" FramesPerSecond="40"
                    RequireOpenedPane="False" SuppressHeaderPostbacks="True" meta:resourcekey="BaseAccordionResource" >
    <Panes>
        <ajaxToolkit:AccordionPane ID="AndroidTetris" runat="server" ContentCssClass="" HeaderCssClass="" meta:resourcekey="TocResource1">
            <Header>
                 <a href="" onclick="return false;">Android Tetris</a>
            </Header>
            <Content>
                <table style="width:96%">
                    <tr>
                        <td valign="top">
                            <asp:Localize runat="server" 
                                ID="Localize1" 
                                meta:resourcekey="AndroidResource"></asp:Localize>

                        </td>
                        <td style="width:200px" align="center">
                            <myControls:MySlideShow runat="server" ID="AndroidSlideShow" Type="Android" />
                        </td>
                    </tr>
                </table>
            
            </Content>
        </ajaxToolkit:AccordionPane>
        <ajaxToolkit:AccordionPane ID="Barbu" runat="server" ContentCssClass="" HeaderCssClass="" meta:resourcekey="TocResource1">
            <Header>
                 <a href="" onclick="return false;">Barbu Dent Bleu Soccer</a>
            
            </Header>
            <Content>
                <table style="width:96%">
                    <tr>
                        <td valign="top">
                            <asp:Localize runat="server" 
                                ID="BarbuText" 
                                meta:resourcekey="BarbuResource"></asp:Localize>

                        </td>
                        <td style="width:200px" align="center">
                            <myControls:MySlideShow runat="server" ID="BarbuSlideShow" Type="Barbu" />

                        </td>
                    </tr>
                </table>
            
            </Content>
        </ajaxToolkit:AccordionPane>
        <ajaxToolkit:AccordionPane ID="XNA" runat="server" ContentCssClass="" HeaderCssClass="" meta:resourcekey="TocResource1">
            <Header>
                 <a href="" onclick="return false;">XNA Projects</a>
            
            </Header>
            <Content>
                <table style="width:96%">
                    <tr>
                        <td valign="top">
                            <asp:Localize runat="server" 
                                ID="XNAText" 
                                meta:resourcekey="XNAResource"></asp:Localize>

                        </td>
                        <td style="width:200px" align="center">
                            <myControls:MySlideShow runat="server" ID="XNASlideShow" Type="XNA" />

                        </td>
                    </tr>
                </table>
            
            </Content>
        </ajaxToolkit:AccordionPane>
        <ajaxToolkit:AccordionPane ID="Torque" runat="server" ContentCssClass="" HeaderCssClass="" meta:resourcekey="TocResource1">
            <Header>
                 <a href="" onclick="return false;">Torque Project</a>
            
            </Header>
            <Content>
                <table style="width:96%">
                    <tr>
                        <td valign="top">
                            <asp:Localize runat="server" 
                                ID="TorqueText" 
                                meta:resourcekey="TorqueResource"></asp:Localize>

                        </td>
                        <td style="width:200px" align="center">
                            <myControls:MySlideShow runat="server" ID="TorqueSlideShow" Type="Torque" />

                        </td>
                    </tr>
                </table>
            
            </Content>
        </ajaxToolkit:AccordionPane>
    </Panes>
</ajaxToolkit:Accordion>