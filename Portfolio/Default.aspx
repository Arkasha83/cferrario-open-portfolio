<%@ Page Title="Showcase Example" Language="C#" MasterPageFile="~/SiteNoBanners.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <section class="game">
        <div class="float-left most">
            <iframe mozallowfullscreen="true" allow="autoplay; fullscreen" src="./Showcase/index.html" 
                style="border: 0px #000000 none;" name="Showcase" scrolling="no" msallowfullscreen="true" allowfullscreen="true" webkitallowfullscreen="true" 
                allowtransparency="true" frameborder="0" height="680" width="940"></iframe>
        </div>
    </section>

</asp:Content>
