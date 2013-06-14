<%@ Control Language="C#" AutoEventWireup="true" 
CodeFile="LocaleChooser.ascx.cs" Inherits="LocaleChooser"  %>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
    Font-Bold="False" Font-Size="Smaller">
    <asp:ListItem Value="en-US">English (US)</asp:ListItem>
    <asp:ListItem Value="fr-FR">Français (FR)</asp:ListItem>
</asp:DropDownList>