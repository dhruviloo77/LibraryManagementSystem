<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LibraryManagement.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row" style="margin-top: 20vh;">
            <div class="col-3 offset-3">User Name:</div>
            <div class="col-3">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="usernameRequiredFieldValidator" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>
            <br />
            <br />

            <div class="col-3 offset-3">Password:</div>
            <div class="col-3">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordRequiredFieldValidator" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>
            <asp:CheckBox ID="chkRememberMe" runat="server" Checked="True" Text="Remember Me" />
            <br />
            <br />
            <div class="col-2 offset-4 mt-3">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </div>
            <div class="col-2 mt-3">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" />
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </div>
        </div>
        <!-- row -->
    </div>
    <!-- container -->
</asp:Content>
