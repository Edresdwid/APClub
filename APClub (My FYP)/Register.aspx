<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="APClub__My_FYP_.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register</h2>
    <p>Create a new account:</p>

    <!-- Message Label for Success/Error Notifications -->
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

    <!-- Registration Form -->
    <asp:TextBox ID="txtName" runat="server" placeholder="Full Name"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <!-- Course Field -->
    <asp:TextBox ID="txtCourse" runat="server" placeholder="Course of Study"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCourse" runat="server" ControlToValidate="txtCourse" ErrorMessage="Course is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <!-- Password Confirmation Field -->
    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirm" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Password confirmation is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator><br />

    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
</asp:Content>
