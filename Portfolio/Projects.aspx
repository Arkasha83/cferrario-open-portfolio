<%@ Page Title="Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Projects.aspx.cs" Inherits="Projects" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        
    <asp:Button ID="Button16" runat="server" Text="ALL" OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button1" runat="server" Text="C++"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button2" runat="server" Text="C#"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button11" runat="server" Text="Steam"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button21" runat="server" Text="PC"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button22" runat="server" Text="XBox360"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button23" runat="server" Text="PS4"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button3" runat="server" Text="IOS"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button13" runat="server" Text="Nintendo DS"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button6" runat="server" Text="Java"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button15" runat="server" Text="Midp 2.0"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button7" runat="server" Text="Game Engine"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button8" runat="server" Text="Artificial Intelligence"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button4" runat="server" Text="Havok Physics"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button12" runat="server" Text="Unreal Engine"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button20" runat="server" Text="Pipeline Tools"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button9" runat="server" Text="3D"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button19" runat="server" Text="2D"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button5" runat="server" Text="Gameplay"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button10" runat="server" Text="Menus"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button14" runat="server" Text="3DS Max"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button17" runat="server" Text="Racing"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button18" runat="server" Text="Adventure"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>
    <asp:Button ID="Button24" runat="server" Text="VR"  OnClick="ButtonSkill_Click" UseSubmitBehavior="false"/>

    <asp:GridView HorizontalAlign="Center" Width="100%" ID="GridView1" runat="server" DataSourceID="EntityDataSource1" AutoGenerateColumns="False" CellPadding="0" DataKeyNames="ID" ForeColor="#333333" GridLines="None" PageSize="25" OnRowDataBound="GridView1_DataBound" ShowHeader="False" AllowSorting="True">
    <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" ItemStyle-HorizontalAlign="Right" /> 
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
    ContextTypeName="Masters" 
    EntitySetName="projects" 
    AutoGenerateOrderByClause="False" 
    AutoGenerateWhereClause="False" 
    EntityTypeFilter="project" 
    ViewStateMode="Enabled" 
    EnableFlattening="False"
    Where="it.skills LIKE '%'+@Skill+'%'" 
    OrderBy="it.year DESC" 
    Select="">
        <WhereParameters>
            <asp:QueryStringParameter Name="Skill" QueryStringField="skills" Type="String" DefaultValue="-"/>
        </WhereParameters>
    </asp:EntityDataSource>


</asp:Content>
