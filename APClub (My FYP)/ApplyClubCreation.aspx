<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ApplyClubCreation.aspx.cs" Inherits="APClub__My_FYP_.ApplyClubCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Apply for Club Creation</h2>

    <!-- Club Creation Requirements Section -->
    <div style="border:1px solid #ddd; padding:10px; margin-bottom:20px;">
        <h3>Club Creation Requirements</h3>
        <ul>
            <li>The club description must declare the purpose of the club, including the reason for its creation.</li>
            <li>You must provide the names and email addresses of both the President and the Vice President.</li>
            <li>Emails of the President and Vice President must end with <strong>@mail.apu.edu.my</strong>.</li>
            <li>Ensure that you select the correct category for the club (Sports, Academic, Arts, Social, etc.).</li>
            <li>The application will be reviewed by the University Admin. You'll receive notification upon approval or rejection.</li>
        </ul>
    </div>

    <!-- Form Fields -->
    <asp:TextBox ID="txtClubName" runat="server" placeholder="Proposed Club Name"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClubName" ErrorMessage="Club Name is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <asp:DropDownList ID="ddlCategory" runat="server">
        <asp:ListItem Text="Select Category" Value="" />
        <asp:ListItem Text="Sports" Value="Sports" />
        <asp:ListItem Text="Academic" Value="Academic" />
        <asp:ListItem Text="Arts" Value="Arts" />
        <asp:ListItem Text="Social" Value="Social" />
    </asp:DropDownList><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" ControlToValidate="ddlCategory" InitialValue="" ErrorMessage="Please select a club category" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="5" placeholder="Club Description (Include reason and objectives)"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription" ErrorMessage="Club Description is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <asp:TextBox ID="txtPresidentName" runat="server" placeholder="President's Full Name"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPresidentName" ErrorMessage="President's name is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <asp:TextBox ID="txtPresidentEmail" runat="server" placeholder="President's Email"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPresidentEmail" ErrorMessage="President's email is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
    <asp:RegularExpressionValidator ID="regexPresidentEmail" runat="server" ControlToValidate="txtPresidentEmail"
        ErrorMessage="President's email must end with @mail.apu.edu.my"
        ValidationExpression="^[a-zA-Z0-9._%+-]+@mail.apu.edu.my$" ForeColor="Red"></asp:RegularExpressionValidator><br />

    <asp:TextBox ID="txtVicePresidentName" runat="server" placeholder="Vice President's Full Name"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtVicePresidentName" ErrorMessage="Vice President's name is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

    <asp:TextBox ID="txtVicePresidentEmail" runat="server" placeholder="Vice President's Email"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtVicePresidentEmail" ErrorMessage="Vice President's email is required" ForeColor="Red"></asp:RequiredFieldValidator><br />
    <asp:RegularExpressionValidator ID="regexVicePresidentEmail" runat="server" ControlToValidate="txtVicePresidentEmail"
        ErrorMessage="Vice President's email must end with @mail.apu.edu.my"
        ValidationExpression="^[a-zA-Z0-9._%+-]+@mail.apu.edu.my$" ForeColor="Red"></asp:RegularExpressionValidator><br />

    <!-- File Upload for Club Logo -->
    <asp:FileUpload ID="fuClubLogo" runat="server" /><br />
    <asp:Label ID="lblUploadStatus" runat="server" ForeColor="Red"></asp:Label><br />

    <!-- Label to show success or error messages -->
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />

    <!-- Submit Button -->
    <asp:Button ID="btnSubmit" runat="server" Text="Submit Request" OnClick="btnSubmit_Click" />
</asp:Content>
