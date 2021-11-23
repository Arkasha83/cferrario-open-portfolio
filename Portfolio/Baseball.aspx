<%@ Page Title="Fun With Baseball" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Baseball.aspx.cs" Inherits="Baseball" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<script type="text/javascript">
    function EnterEvent(e) {
        if (e.keyCode == 13) {
            __doPostBack('<%=Button1.UniqueID%>', "");
    }
}
</script>
<div style="text-align: center">
    <div>

        I mainly work in C++ or Java, but I enjoy C# as well as ASP.Net a lot, especially for anything web related. I&#39;ve been playing around with it on the side for fun and wanted to showcase that I could do a few things with it.<br />
        <br />
        I have for example uploaded Lahman&#39;s baseball database ( <a href="http://www.seanlahman.com/baseball-archive/statistics/">http://www.seanlahman.com/baseball-archive/statistics/</a> ) to my database server through parsing of the .csv and programmatically generating SQL INSERT calls.<br />
        I then generated an edmx file of the database using Entity Framework to finally use an EntityDataSource to fill out the following GridView.<br />
        <br />
        Find player by City :
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"  onkeypress="return EnterEvent(event)"></asp:TextBox>
        <br />
        Find player by Country :
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" onkeypress="return EnterEvent(event)"></asp:TextBox>
        <br />
        Find player by LastName :
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" onkeypress="return EnterEvent(event)"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" style="display:none" Text="Button" />

        <asp:GridView HorizontalAlign="Center" ID="GridView1" runat="server" DataSourceID="EntityDataSource1" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" PageSize="25" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="nameFirst" HeaderText="First" SortExpression="nameFirst" />
                <asp:BoundField DataField="nameLast" HeaderText="Last" SortExpression="nameLast" />
                <asp:BoundField DataField="birthYear" HeaderText="Birth Year" SortExpression="birthYear" />
                <asp:BoundField DataField="birthCountry" HeaderText="Birth Country" SortExpression="birthCountry" />
                <asp:BoundField DataField="birthCity" HeaderText="Birth City" SortExpression="birthCity" />
                <asp:BoundField DataField="bats" HeaderText="Bats" SortExpression="bats" />
                <asp:BoundField DataField="throws" HeaderText="Throws" SortExpression="throws" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerSettings PageButtonCount="20" />
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
     ContextTypeName="Masters" EntitySetName="Masters" AutoGenerateOrderByClause="True" AutoGenerateWhereClause="True" EntityTypeFilter="Master" ViewStateMode="Enabled" EnableFlattening="False">
        </asp:EntityDataSource>
    </div>
</div>
</asp:Content>