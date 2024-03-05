<%@ Page Title="Showcase Example" Language="C#" MasterPageFile="~/SiteNoBanners.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <span class="biotitle">
        Welcome to my 3D showroom! (mobile support WIP)
        <br />
        <a id="A3" runat="server" href="~/2D.aspx">Access classic Portfolio (2D)</a>
        <br />
    </span>
    <section class="game">
        <div class="float-left most">
            <iframe mozallowfullscreen="true" allow="autoplay; fullscreen" src="./Showcase/index.html"
                style="border: 0px #000000 none;" name="Showcase" scrolling="no" msallowfullscreen="true" allowfullscreen="true" webkitallowfullscreen="true"
                allowtransparency="true" frameborder="0" height="680" width="940"></iframe>
        </div>
    </section>

</asp:Content>
