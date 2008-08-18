<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CodeAccordion.ascx.cs" Inherits="Controls_DynamicAccordion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="~/Controls/MySlideShow.ascx"   TagName="MySlideShow"   TagPrefix="myControls" %>

<ajaxToolkit:Accordion ID="BaseAccordion" runat="server" HeaderSelectedCssClass="accordionHeaderSelected"
                    SelectedIndex="-1" HeaderCssClass="accordionHeader" ContentCssClass="accordionContent"
                    FadeTransitions="True" TransitionDuration="250" FramesPerSecond="40"
                    RequireOpenedPane="False" SuppressHeaderPostbacks="True" meta:resourcekey="BaseAccordionResource" >
    <Panes>
        <ajaxToolkit:AccordionPane ID="Java" runat="server" ContentCssClass="" HeaderCssClass="" meta:resourcekey="JavaResource1">
            <Header>
                 <a href="" onclick="return false;">Java</a>
            
            </Header>
            <Content>
                <asp:Localize runat="server" 
                                    ID="JavaText" 
                                    meta:resourcekey="JavaResource"></asp:Localize>
            </Content>
        </ajaxToolkit:AccordionPane>
        <ajaxToolkit:AccordionPane ID="Cplus" runat="server" ContentCssClass="" HeaderCssClass="" meta:resourcekey="CplusResource1">
            <Header>
                <a href="" onclick="return false;">C++</a>
            </Header>
            <Content>
                <asp:Localize runat="server" 
                                    ID="CplusText" 
                                    meta:resourcekey="CplusResource"></asp:Localize>
            </Content>
        </ajaxToolkit:AccordionPane>
        <ajaxToolkit:AccordionPane ID="Csharp" runat="server" ContentCssClass="" HeaderCssClass="" meta:resourcekey="CsharpResource1">
            <Header>
                <a href="" onclick="return false;">C#</a>
            </Header>
            <Content>
                <asp:Localize runat="server" 
                                    ID="CsharpText" 
                                    meta:resourcekey="CsharpResource"></asp:Localize>
            </Content>
        </ajaxToolkit:AccordionPane>
    </Panes>
</ajaxToolkit:Accordion>