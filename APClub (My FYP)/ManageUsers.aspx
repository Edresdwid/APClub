<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="APClub__My_FYP_.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage Users</h2>
    <p>University Admin can assign roles to users.</p>

    <!-- Message Label for Success/Error Notifications -->
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

    <!-- Search Bar with Dropdown List -->
    <asp:DropDownList ID="ddlSearchCategory" runat="server">
        <asp:ListItem Text="Name" Value="Name"></asp:ListItem>
        <asp:ListItem Text="Email" Value="Email"></asp:ListItem>
        <asp:ListItem Text="Role" Value="Role"></asp:ListItem>
    </asp:DropDownList>

    <!-- Search Box -->
    <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter search term"></asp:TextBox>

    <!-- Search Button -->
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />

    <!-- User List Grid -->
    <asp:GridView ID="UserGrid" runat="server" AutoGenerateColumns="false" OnRowCommand="UserGrid_RowCommand">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="User ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Role" HeaderText="Current Role" />
            <asp:TemplateField HeaderText="Change Role">
                <ItemTemplate>
                    <asp:DropDownList ID="ddlRoles" runat="server">
                        <asp:ListItem Text="student" Value="student"></asp:ListItem>
                        <asp:ListItem Text="club_admin" Value="club_admin"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnChangeRole" runat="server" Text="Update Role" CommandArgument='<%# Eval("UserId") %>' CommandName="UpdateRole" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
