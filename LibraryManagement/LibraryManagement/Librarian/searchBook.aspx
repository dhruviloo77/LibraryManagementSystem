<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="searchBook.aspx.cs" Inherits="LibraryManagement.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        Type the keywords for search results :
        <asp:TextBox ID="TextBox1" runat="server" Width="371px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="btnSearch" runat="server" Text="Search" />
    </p>
</asp:Content>
