<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="APClub__My_FYP_.UserDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Student Dashboard</h2>
    <p>Welcome, Student!</p>
    
    <!-- Add buttons or links for students to view and join clubs -->
    <asp:Button ID="btnViewClubs" runat="server" Text="View Available Clubs" OnClick="btnViewClubs_Click" />
    <asp:Button ID="btnJoinClubs" runat="server" Text="Join a Club" OnClick="btnJoinClubs_Click" />
</asp:Content>
