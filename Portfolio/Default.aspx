<%@ Page Title="Bio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
<hgroup class="title">
    <h1><br /><%: Title %></h1>
</hgroup>
    

<div>
    <div class="float-left most">
        <br/>
        <span class="biotitle">
        Allow me to tell you about myself:
        </span>
        <br/>
        <span class="biotext">
            I've been a software engineer for games since 2007, a moder since the early 2000's and a gamer since the early 90's.<br />
            <br/>
            After working for studios in Montreal, New York, Paris, London and Hamburg, I now work for Meta owned Ready at Dawn in sunny California 
            where I have the privilege to help making amazing VR games. 
            <br/>
            <br/>
            When not programming, you usually can find me on the diamond as I've been playing, coaching and umpiring baseball since the mid 90s .
            <br/>
            <br/>
        </span>
    </div>
    <br style="clear:both;"/>
</div>
    
<div>
    <div class="float-left">
        <br/>
        <br/>
        <div><img src="Images/img/ss/bio/1.jpg" width="430"/></div>
        <div><iframe width="430" height="342" src="https://www.youtube.com/embed/vS44cwfrTKA?feature=player_detailpage" frameborder="0" allowfullscreen="true"></iframe></div>
        <div><img src="Images/personal3.jpg" width="430"/></div>
    </div>
    <div class="float-right">
        <br/>
        <br/>
        <div onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">
        <img src="Images/as7_thumbnail.jpg" width="500" height="300" style="cursor:pointer" />
        </div>
        <div style="display:none">
            <div><iframe width="500" height="300" src="https://www.youtube.com/embed/aHstQVfbUVU?feature=player_detailpage" frameborder="0" allowfullscreen="true"></iframe></div>
        </div>
        <div><iframe width="500" height="300" src="https://www.youtube.com/embed/qGaZYEu_ug4?feature=player_detailpage" frameborder="0" allowfullscreen="true"></iframe></div>
        <div><iframe width="500" height="300" src="https://www.youtube.com/embed/DQIbUBbNGd0?feature=player_detailpage" frameborder="0" allowfullscreen="true"></iframe></div>
        <div><img src="Images/baseball2.jpg" width="500"/></div>
    </div>
    <br style="clear:both;"/>
</div>

</asp:Content>