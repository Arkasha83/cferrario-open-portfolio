<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="baseball_Rockers_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rockers Stats</title>
    <link href="gridview.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div><br /><center>Download Excel sheet <a href="StatSeasonRockers-2010.xls">StatSeasonRockers-2010.xls</a><br />
        
        <% Response.Write( GetModified() ); %>
        </center><br /></div>
        <asp:ScriptManager ID="smScriptManager" runat="server" EnableViewState="False"/>
        <div>
            <asp:UpdatePanel ID="upDataUpdate" runat="server" EnableViewState="False">
                <ContentTemplate>
                    <asp:PlaceHolder ID="holder" runat="server" ></asp:PlaceHolder>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
