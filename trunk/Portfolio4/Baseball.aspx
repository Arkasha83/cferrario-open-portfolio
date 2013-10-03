<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Baseball.aspx.cs" Inherits="Baseball" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField  DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True"/>
                <asp:BoundField DataField="franchID" HeaderText="franchID" SortExpression="franchID" />
                <asp:BoundField DataField="franchName" HeaderText="franchName" SortExpression="franchName" />
                <asp:BoundField DataField="active" HeaderText="active" SortExpression="active" />
                <asp:BoundField DataField="NAassoc" HeaderText="NAassoc" SortExpression="NAassoc" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" OnContextCreating="EntityDataSource1_ContextCreating" 
    ConnectionString="name=Entities" 
    DefaultContainerName="Entities"  
     ContextTypeName="Masters" EntitySetName="TeamsFranchises" AutoGenerateOrderByClause="True" AutoGenerateWhereClause="True" EntityTypeFilter="TeamsFranchis" ViewStateMode="Enabled">
        </asp:EntityDataSource>
    </div>
    </form>
</body>
</html>
