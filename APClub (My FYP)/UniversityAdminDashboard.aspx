<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="UniversityAdminDashboard.aspx.cs" Inherits="APClub__My_FYP_.UniversityAdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>University Admin Dashboard</h2>
    <p>Welcome, University Admin!</p>
    
    <!-- Add buttons or links to approve/reject clubs or events -->
    <asp:Button ID="btnApproveClubs" runat="server" Text="Approve or Reject Clubs" OnClick="btnApproveClubs_Click" />
    <asp:Button ID="btnApproveEvents" runat="server" Text="Approve or Reject Events" OnClick="btnApproveEvents_Click" />
    <asp:Button ID="btnManageUsers" runat="server" Text="Manage Users" OnClick="btnManageUsers_Click" />
</asp:Content>
