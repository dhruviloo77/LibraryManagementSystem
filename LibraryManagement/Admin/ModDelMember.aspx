<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="ModDelMember.aspx.cs" Inherits="LibraryManagement.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="align-content:center";>
            <hr /><center><h2>Modify / Delete Member</h2><hr />

            <br /><label>
                Member ID: </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br /><label>
                Member Name: </label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSearch" runat="server" Text="Search" />
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            </center>
        </div>
</asp:Content>
