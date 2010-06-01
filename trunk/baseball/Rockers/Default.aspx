<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="baseball_Rockers_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rockers Stats</title>
    <link href="gridview.css" rel="stylesheet" type="text/css" />
    <link href="../../css/TabsStyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div><br /><center>Download Excel sheet <a href="StatSeasonRockers-2010.xls">StatSeasonRockers-2010.xls</a><br />
        
        <% Response.Write( GetModified() ); %>
        </center><br /></div>
        <asp:GridView ID="GridView1" runat="server"  
        GridLines="None"   
        CssClass="mGrid"  
        AlternatingRowStyle-CssClass="alt" Caption="Hitting Stats" AllowSorting="True" OnSorting="GridView1_Sorting"
        AutoGenerateColumns="false">
        <AlternatingRowStyle CssClass="alt"/>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server"
        GridLines="None"   
        CssClass="mGrid"  
        AlternatingRowStyle-CssClass="alt" Caption="Pitching Stats" AllowSorting="True" OnSorting="GridView2_Sorting"
        AutoGenerateColumns="false">
        <AlternatingRowStyle CssClass="alt" />
        </asp:GridView>
    </form>
</body>
</html>
