<%@ Page Title="Game Example" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Game.aspx.cs" Inherits="Game" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <%: Title %></h1>
    </hgroup>


    <section class="game">
        <div class="float-left most">
            WORK IN PROGRESS, JUST STARTED OVER IN MAY 2023!
            <br />
            <iframe mozallowfullscreen="true" allow="autoplay; fullscreen" src="./Game/WebGL Builds/index.html" 
                style="border: 0px #000000 none;" name="Karting Minigame" scrolling="no" msallowfullscreen="true" allowfullscreen="true" webkitallowfullscreen="true" 
                allowtransparency="true" frameborder="0" height="680" width="940"></iframe>
            <br />
            <br />
            <br />
            <br />
        </div>
    </section>

</asp:Content>
