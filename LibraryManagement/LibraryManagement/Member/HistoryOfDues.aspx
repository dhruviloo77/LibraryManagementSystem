<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="HistoryOfDues.aspx.cs" Inherits="LibraryManagement.WebForm10" %>
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
    <h3>History of Paid Dues</h3>
    
     <table>
        <tr>
            <th>Book S.No</th>
            <th>Amount</th>
            <th>Date Paid</th>
        </tr>
        <tr>
            <th>1</th>
            <th>$25</th>
            <th>1 April</th>
        </tr>
    </table>
        </div>
</asp:Content>
