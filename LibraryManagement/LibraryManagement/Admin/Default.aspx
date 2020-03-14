<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LibraryManagement.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr /><center><h2>Book</h2></center><hr />
        <br />
        Select
        <br />
        <br />
        <asp:RadioButton ID="rdBook" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Book" checked GroupName="book"/>
        <asp:RadioButton ID="rdAuthor" runat="server" Text="Author" GroupName="book" OnCheckedChanged="rdAuthor_CheckedChanged" />
        <asp:RadioButton ID="rdPublisher" runat="server" Text="Publisher" GroupName="book" OnCheckedChanged="rdPublisher_CheckedChanged" />
        <asp:RadioButton ID="rdCat" runat="server" Text="Category / Genre" GroupName="book" OnCheckedChanged="rdCat_CheckedChanged" />
        <br />
        <br />
        Select Function<br />
        <br />
        <asp:RadioButton ID="rdAdd" runat="server" Text="ADD" checked GroupName="funbook"/>
        <asp:RadioButton ID="rdModify" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Modify" GroupName="funbook" />
        <asp:RadioButton ID="rdDelete" runat="server" Text="Delete" GroupName="funbook" OnCheckedChanged="rdDelete_CheckedChanged" />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <hr /><center><h2>Librarian</h2></center><hr />

        <br />
        Select Function<br />
        <br />
        <asp:RadioButton ID="rdLibAdd" runat="server" Text="ADD" checked GroupName="funlib" OnCheckedChanged="rdLibAdd_CheckedChanged"/>
        <asp:RadioButton ID="rdLibMod" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Modify" GroupName="funlib" />
        <asp:RadioButton ID="rdLibDel" runat="server" Text="Delete" OnCheckedChanged="rdDelete0_CheckedChanged" GroupName="funlib" />
        <br />
        <br />
        <asp:Button ID="btnSubmit0" runat="server" Text="Submit" OnClick="btnSubmit0_Click" />
        <br />
        <br />
        <br />
        <hr /><center><h2>Member</h2></center><hr />

        <br />
        Select Function<br />
        <br />
        <asp:RadioButton ID="rdAddMem" runat="server" Text="ADD" checked GroupName="funmem" OnCheckedChanged="rdAddMem_CheckedChanged"/>
        <asp:RadioButton ID="rdModifyMem" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Modify" GroupName="funmem" />
        <asp:RadioButton ID="rdDeleteMem" runat="server" Text="Delete" GroupName="funmem" OnCheckedChanged="rdDeleteMem_CheckedChanged" />
        <br />
        <br />
        <asp:Button ID="btnSubmit1" runat="server" Text="Submit" OnClick="btnSubmit1_Click" />
</asp:Content>
