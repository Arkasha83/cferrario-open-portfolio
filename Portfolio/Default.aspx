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
            After working in studios in Montreal, New York and Paris, I now work as the main AI programmer and am part of the Physics 
            team for London based Slightly Mad Studios, where I've been contributing on PC and console titles such as Project CARS, Project CARS 2 and Red Bull Air
            Race - The Game as well as other big unannounced ambitious projects. 
            <br/>
            <br/>
            When not programming, you usually can find me on the diamond as I've been playing, coaching and umpiring baseball for more then 20 years.
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
        <div><iframe width="430" height="342" src="https://www.youtube.com/embed/PsaUd8dfiHU?feature=player_detailpage" frameborder="0" allowfullscreen></iframe></div>
        <div><img src="Images/personal3.jpg" width="430"/></div>
    </div>
    <div class="float-right">
        <br/>
        <br/>
        <div onclick="this.nextElementSibling.style.display='block'; this.style.display='none'">
        <img src="Images/as7_thumbnail.jpg" width="500" height="300" style="cursor:pointer" />
        </div>
        <div style="display:none">
            <div><iframe width="500" height="300" src="https://www.youtube.com/embed/aHstQVfbUVU?feature=player_detailpage" frameborder="0" allowfullscreen></iframe></div>
        </div>
        <div><iframe width="500" height="300" src="https://www.youtube.com/embed/eAK9LKWlkZ0?feature=player_detailpage" frameborder="0" allowfullscreen></iframe></div>
        <div><iframe width="500" height="300" src="https://www.youtube.com/embed/DQIbUBbNGd0?feature=player_detailpage" frameborder="0" allowfullscreen></iframe></div>
        <div><img src="Images/baseball2.jpg" width="500"/></div>
    </div>
    <br style="clear:both;"/>
</div>

</asp:Content>