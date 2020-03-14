<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="IssuedBooks.aspx.cs" Inherits="LibraryManagement.WebForm7" %>
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
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
        <br />
        <asp:GridView ID="grdIssuebooks" runat="server">
        </asp:GridView>
            <br />
        <asp:Label ID="Label1" runat="server" Text="Return Book"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="Request Return" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString %>" SelectCommand="SELECT [Title] FROM [tblUser_Book]"></asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text="Request Extension"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnExtension" runat="server" OnClick="btnExtension_Click" Text="Request Extension" />
            <br />
            <br />
        </div>
    
        
</asp:Content>
