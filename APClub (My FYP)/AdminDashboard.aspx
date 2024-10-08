<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="APClub__My_FYP_.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Club Admin Dashboard</h2>
    <p>Welcome, Club Admin!</p>
    
    <!-- Add buttons or links to create events, manage club members -->
    <asp:Button ID="btnCreateEvent" runat="server" Text="Create New Event" OnClick="btnCreateEvent_Click" />
    <asp:Button ID="btnManageMembers" runat="server" Text="Manage Club Members" OnClick="btnManageMembers_Click" />
</asp:Content>
