<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyAccordion.ascx.cs" Inherits="Controls_Accordion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="~/Controls/MySlideShow.ascx"   TagName="MySlideShow"   TagPrefix="uc1" %>

            <cc1:Accordion ID="Accordion1" runat="server" HeaderSelectedCssClass="accordionHeaderSelected"
                    SelectedIndex="-1" HeaderCssClass="accordionHeader" ContentCssClass="accordionContent"
                    FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40" AutoSize="None"
                    RequireOpenedPane="false" SuppressHeaderPostbacks="true" >
                    <Panes>
                        <cc1:AccordionPane ID="GTRacing" runat="server">
                            <Header>
                                <a href="" onclick="return false;">GT Racing: Motor Academy (iPhone/iPad)</a>
                            </Header>
                            <Content>
                                <table style="width:96%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Localize runat="server" 
                                                ID="Localize2" 
                                                meta:resourcekey="GTRacingTextResource">
                                            </asp:Localize>
                                        </td>
                                        <td style="width:200px" align="center">
                                            <uc1:MySlideShow runat="server" ID="GTRacingSlideShow" Type="Gtracing" />
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </cc1:AccordionPane>
                        <cc1:AccordionPane ID="Myhero" runat="server">
                            <Header>
                                <a href="" onclick="return false;">My Hero: Astronaut (Nintendo DS)</a>
                            </Header>
                            <Content>
                                <table style="width:96%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Localize runat="server" 
                                                ID="Localize1" 
                                                meta:resourcekey="MyHeroTextResource">
                                            </asp:Localize>
                                        </td>
                                        <td style="width:200px" align="center">
                                            <uc1:MySlideShow runat="server" ID="Myheroslideshow" Type="Myhero" />
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </cc1:AccordionPane>
                        <cc1:AccordionPane ID="Spooks" runat="server">
                            <Header>
                                <a href="" onclick="return false;">Spooks: The Mobile Game (Java Midp)</a>
                            </Header>
                            <Content>
                                <table style="width:96%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Localize runat="server" 
                                                ID="SpooksText" 
                                                meta:resourcekey="SpooksTextResource">
                                            </asp:Localize>
                                        </td>
                                        <td style="width:200px" align="center">
                                            <uc1:MySlideShow runat="server" ID="SpooksSlideShow" Type="Spooks" />
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </cc1:AccordionPane>
                        <cc1:AccordionPane ID="Spiderwick" runat="server">
                            <Header>
                                <a href="" onclick="return false;">The Spiderwick Chronicles (Java Midp)</a>
                            </Header>
                            <Content>
                                <table style="width:96%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Localize runat="server" 
                                                ID="SpiderwickText" 
                                                meta:resourcekey="SpiderwickTextResource">
                                            </asp:Localize>
                                        </td>
                                        <td style="width:200px" align="center">
                                            <uc1:MySlideShow runat="server" ID="MySlideShow1" Type="Spiderwick" />
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </cc1:AccordionPane>
                        <cc1:AccordionPane ID="Nowhere" runat="server">
                            <Header>
                                <a href="" onclick="return false;">Nowhere (Java Midp)</a>
                            </Header>
                            <Content>
                                <table style="width:96%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Localize runat="server" 
                                                ID="NowhereText" 
                                                meta:resourcekey="NowhereTextResource">
                                            </asp:Localize>
                                        </td>
                                        <td style="width:200px" align="center">
                                            <uc1:MySlideShow runat="server" ID="slideshow" Type="Nowhere" />
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </cc1:AccordionPane>
                        <cc1:AccordionPane ID="Landers" runat="server">
                            <Header>
                                <a href="" onclick="return false;">Landers (Java Midp)</a>
                            </Header>
                            <Content>
                                <table style="width:96%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Localize runat="server" 
                                                ID="LandersText" 
                                                meta:resourcekey="LandersTextResource">
                                            </asp:Localize>
                                        </td>
                                        <td style="width:200px" align="center">
                                            <uc1:MySlideShow runat="server" ID="MySlideShow2" Type="Landers" />
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </cc1:AccordionPane>
                        <cc1:AccordionPane ID="HolyWars" runat="server">                            
                            <Header>
                                <a href="" onclick="return false;">Holy Wars (Java Midp)</a>
                            </Header>
                            <Content>
                                <table style="width:96%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Localize runat="server" 
                                                ID="HolyWarsText" 
                                                meta:resourcekey="HolyWarsResource">
                                            </asp:Localize>
                                        </td>
                                        <td style="width:200px" align="center">
                                            <uc1:MySlideShow runat="server" ID="HolyWarsSlideShow" Type="HolyWars" />
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </cc1:AccordionPane>
                        <cc1:AccordionPane ID="Crash" runat="server">                            
                            <Header>
                                <a href="" onclick="return false;">Crash of the Titans (Java Midp)</a>
                            </Header>
                            <Content>
                                <table style="width:96%">
                                    <tr>
                                        <td valign="top">
                                            <asp:Localize runat="server" 
                                                ID="CrashText" 
                                                meta:resourcekey="CrashResource">
                                            </asp:Localize>
                                        </td>
                                        <td style="width:200px" align="center">
                                            <uc1:MySlideShow runat="server" ID="MySlideShow3" Type="Crash" />
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </cc1:AccordionPane>
                    </Panes>
            </cc1:Accordion>