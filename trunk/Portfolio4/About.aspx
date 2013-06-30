<%@ Page Title="Code Examples" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>

    <article>
        <p>        
            I've been coding for a long time, but sadly most of it as well as my best work is not available for distribution.<br /><br />
            I have fooled around with a few side projects over the years though, for example:<br />
        </p>

        <br /><h2>Cross Platform Tetris Project:</h2><br />

        <p>        
            For Android (Java): <a href="https://code.google.com/p/androidtetris/">https://code.google.com/p/androidtetris/</a><br />
            For Nintendo DS (C++) : <a href="https://code.google.com/p/dstetris/">https://code.google.com/p/dstetris/</a><br />
            For XNA (C#) : <a href="https://code.google.com/p/xnatetris/">https://code.google.com/p/xnatetris/</a><br />
        </p>

        <br /><h2>Barbu Dent Bleu Soccer: ( or the mobile version of Barbu Soccer )</h2><br />

        <p>       
            It's an homage to one of my Co-worker's early projects: Barbu Soccer, a very fun and very simple yet addictive PC soccer game.<br /><br />

            <iframe width="640" height="360" src="https://www.youtube.com/embed/1Ti8Gkyk_cU?feature=player_detailpage" frameborder="0" allowfullscreen></iframe><br /><br />

            <a href="http://toutetatom.free.fr/?page=annonces&ref=barbusoccer">Fansite</a><br /><br />

            I also wanted to explore MIDP 2.0 multiplayer Bluetooth capabilities and wanted to recreate the fun and crazy soccer game as a two handset game for quick and easy fun. The part of the name 
            Dent Bleu is a literal and ridiculous translation into French of "Blue Tooth".<br /><br />

            The game also features a Single Player mode, however since I really meant this game to be multiplayer I have put no effort into making a good AI, but I might consider trying to improve it at some point in time.<br /><br />

            The beta of the game is available for download, as well as the source(NetBeans Project). Be warned, the multiplayer mode is not working yet! Have fun anyway :D!<br /><br />

            And finally, this game only weighs 64k!<br /><br />
            
            Code (Java) : <a href="https://code.google.com/p/barbu-soccer/source/checkout">https://code.google.com/p/barbu-soccer/source/checkout</a><br />
            Project (Java/Netbeans) : <a href="Content/barbu/Barbu-NetBeansProject.rar">Download</a><br />
            JarFile (Midp 2.0) : <a href="Content/barbu/BarbuJAD+JAR.rar">Download</a><br />
        </p>
    </article>
    
</asp:Content>