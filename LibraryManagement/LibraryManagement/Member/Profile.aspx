<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="LibraryManagement.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
    <asp:Menu ID="Menu2" runat="server" BackColor="Aqua" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="1em" ForeColor="#0033CC" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/Member/IssuedBooks.aspx" Text="View Issued Books" Value="View Issued Books"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Member/UnpaidOverdues.aspx" Text="View Unpaid Overdues" Value="View Unpaid Overdues"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Member/HistoryOfBooks.aspx" Text="History of Books" Value="History of Books"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Member/HistoryOfDues.aspx" Text="History of Overdues paid" Value="History of Overdues paid"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <br />
            <br />
    
    <h3>Member's Profile</h3>
     
            <br />
        <asp:Button ID="btnPicture" runat="server" Height="33px" Text="Change Profile Picture" Width="171px" OnClick="btnPicture_Click"  />
        <div style="margin-left: 580px">
            <asp:Image ID="imageButtonProfile" runat="server" Height="125px" Width="139px" />
            <asp:FileUpload ID="FileImage" runat="server" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <asp:Button ID="btnChange" runat="server" Text="Change" OnClick="btnChange_Click" />
        </div>
     
            <br/>
        
        <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" Height="34px" OnClick="btnChangePassword_Click" Width="171px" />
        <br />
        <br />
        <asp:Label ID="lblOldPassword" runat="server" Text="Enter New Password :"></asp:Label>
        <asp:TextBox ID="txtOldPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="lblNewPassword" runat="server" Text="Renter New Password :"></asp:Label>
        <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdatePassword" runat="server" style="margin-top: 6px" Text="Update Password" OnClick="btnUpdatePassword_Click" />
        <br />
        <br />
        <asp:Button ID="btnUpdateInfo" runat="server" Text="Update Contact Info" Width="190px" OnClick="btnUpdateInfo_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Contact Info:"></asp:Label>
        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
        <br />
        <br />
     
            <asp:Button ID="btnDeleteAccount" runat="server" Height="32px" Text="Delete Account" Width="171px" />
  </div>
</asp:Content>
