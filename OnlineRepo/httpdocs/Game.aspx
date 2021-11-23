<%@ Page Title="Game Example" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="~/Game.aspx.cs" Inherits="Game" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1> <br /><%: Title %></h1>
    </hgroup>
    <script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
		<script type="text/javascript">
		<!--
    var unityObjectUrl = "http://webplayer.unity3d.com/download_webplayer-3.x/3.0/uo/UnityObject2.js";
    if (document.location.protocol == 'https:')
        unityObjectUrl = unityObjectUrl.replace("http://", "https://ssl-");
    document.write('<script type="text\/javascript" src="' + unityObjectUrl + '"><\/script>');
    -->
		</script>
		<script type="text/javascript">
		<!--
    var config = {
        width: 960, 
        height: 600,
        params: { enableDebugging:"0" }
				
    };
    var u = new UnityObject2(config);

    jQuery(function() {

        var $missingScreen = jQuery("#unityPlayer").find(".missing");
        var $brokenScreen = jQuery("#unityPlayer").find(".broken");
        $missingScreen.hide();
        $brokenScreen.hide();
				
        u.observeProgress(function (progress) {
            switch(progress.pluginStatus) {
                case "broken":
                    $brokenScreen.find("a").click(function (e) {
                        e.stopPropagation();
                        e.preventDefault();
                        u.installPlugin();
                        return false;
                    });
                    $brokenScreen.show();
                    break;
                case "missing":
                    $missingScreen.find("a").click(function (e) {
                        e.stopPropagation();
                        e.preventDefault();
                        u.installPlugin();
                        return false;
                    });
                    $missingScreen.show();
                    break;
                case "installed":
                    $missingScreen.remove();
                    break;
                case "first":
                    break;
            }
        });
        u.initPlugin(jQuery("#unityPlayer")[0], "game/web.unity3d");
    });
    -->
		</script>
		<style type="text/css">
		<!--
		div.broken,
		div.missing {
			margin: auto;
			position: relative;
			top: 50%;
			width: 193px;
		}
		div.broken a,
		div.missing a {
			height: 63px;
			position: relative;
			top: -31px;
		}
		div.broken img,
		div.missing img {
			border-width: 0px;
		}
		div.broken {
			display: none;
		}
		div#unityPlayer {
			cursor: default;
			height: 600px;
			width: 900px;
		}
		-->
		</style>

    <section class="contact">
		<div class="content most">
        <span class="biotext">
            <br />
            <b>WARNING! Due to Chrome/Firefox/Edge dropping NPAPI support, the Unity WebPlayer is only available on Internet explorer!</b>
            <br /><br />
            This was just an exercise in quickly setting up some AI.<br />
            <br/>
            Starting with a base of the default <a href="https://www.assetstore.unity3d.com/#/content/10">Unity Car Racing Game </a><br/>
            I added a simple AI oppenent using a simple raycast based "feeler" system to try to drive around the track by avoiding wall obstacles.<br />
            <br/>
            The AI doesn't know anything about the track so if you nudge it it might start going in reverse.<br/>
            It's pretty simplistic and needs to slow down to take turns, can you beat it around the track???<br />
            <br/>
            Controls:<br/>
            Up,Down,Left,Right : Driving Controls<br/>
            Space : Handbrake<br/>
            Make sure you have the unity plugin focused to recieve keyboard input and feel free to refresh the page to restart.<br />
            <br/><br/>
        </span>
			<div id="unityPlayer">
				<div class="missing">
					<a href="http://unity3d.com/webplayer/" title="Unity Web Player. Install now!">
						<img alt="Unity Web Player. Install now!" src="http://webplayer.unity3d.com/installation/getunity.png" width="193" height="63" />
					</a>
				</div>
				<div class="broken">
					<a href="http://unity3d.com/webplayer/" title="Unity Web Player. Install now! Restart your browser after install.">
						<img alt="Unity Web Player. Install now! Restart your browser after install." src="http://webplayer.unity3d.com/installation/getunityrestart.png" width="193" height="63" />
					</a>
				</div>
			</div>
		</div>
		<p class="footer">&laquo; created with <a href="http://unity3d.com/unity/" title="Go to unity3d.com">Unity</a> &raquo;</p>
    </section>

</asp:Content>
