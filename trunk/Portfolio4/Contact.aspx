<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>


    <section class="contact">
        <header>
            <h3>Linked in is my prefered method of contact for professional inquiries:</h3>
        </header>
        <p>
            <span><a href="http://ca.linkedin.com/in/christianferrario">Linked in profile</a></span>
        </p>
    </section>

</asp:Content>