<%@ Page Title="Bio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_2D" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
<div>
    <div class="float-left most">
        <br/>
        <span class="biotext">
          <h2>About Me</h2>
          <p>
            Hi, I’m <strong>Christian Ferrario</strong>, a Senior Gameplay and AI Programmer with more than 
            17 years of experience building game systems across genres, platforms, and technologies. 
            I specialize in <strong>advanced AI, gameplay programming, and engine-level problem solving</strong>, 
            with deep hands-on expertise in C++, C#, Unreal Engine, Unity, and a wide range of proprietary engines.
          </p>

          <p>
            Over the years, I’ve had the chance to work on a diverse set of projects—from 
            <strong>racing AI and navigation systems for titles like Project CARS</strong> to 
            <strong>VR gameplay features for Echo VR</strong>, as well as AI, gameplay, and world-building 
            systems for <strong>Aim Lab</strong> and several unannounced projects. I enjoy tackling complex 
            technical challenges, whether that’s crafting convincing vehicle behavior, building tools for 
            designers, optimizing real-time systems, or experimenting with machine-learning approaches to 
            enhance gameplay.
          </p>

          <p>
            I’ve collaborated with teams across the US, Canada, Europe, and Asia, including Ready at Dawn, Facebook/Meta, 
            Slightly Mad Studios, Statespace, Out of the Park Baseball and others. Today, I work as a 
            <strong>Video Game Programming Consultant</strong>, helping studios solve difficult gameplay and AI 
            problems, improve performance and stability, and bring ambitious ideas from prototype to polished experience.
          </p>

          <p>
            I’m passionate about creating systems that feel intuitive, responsive, and alive—and I’m always excited 
            to take on new challenges that push the boundaries of what games can do.
          </p>
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