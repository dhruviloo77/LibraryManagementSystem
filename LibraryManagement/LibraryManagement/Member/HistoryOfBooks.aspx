<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="HistoryOfBooks.aspx.cs" Inherits="LibraryManagement.WebForm9" %>
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
   <h3>History of Books</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Book Name" />
                    <asp:BoundField DataField="Status" HeaderText="Status"/>
                    <asp:BoundField DataField="IssueDate" HeaderText="Issue Date"/>
                    <asp:BoundField DataField ="RequestDate" HeaderText="Requested Date"/>
                </Columns>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </p>
    
         
</asp:Content>
