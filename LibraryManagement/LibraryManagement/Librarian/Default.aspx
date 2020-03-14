<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LibraryManagement.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="height: 100vh; color: rgb(22, 54,100);">
        
                        <asp:Menu ID="Menu2" runat="server" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Overline="False" Font-Size="Large" ForeColor="#0033CC" Orientation="Horizontal" StaticSubMenuIndent="10px" ItemWrap="True">
                            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#F7F6F3" />
                            <DynamicSelectedStyle BackColor="#5D7B9D" />
                            <Items>
                                <asp:MenuItem Text="Approve Issue Requests" Value="Approve Issue Requests"></asp:MenuItem>
                                <asp:MenuItem Text="Search Books" Value="New Item" NavigateUrl="~/Librarian/searchBook.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Collect the book returned by user" Value="Collect the book returned by user"></asp:MenuItem>
                                <asp:MenuItem Text="Generate Reports" Value="Generate the report of all books">
                                    <asp:MenuItem Text="Report of All books" Value="Report of All books"></asp:MenuItem>
                                    <asp:MenuItem Text="Report of Issued books" Value="Report of Issued books"></asp:MenuItem>
                                    <asp:MenuItem Text="Report of overdue books" Value="Report of overdue books"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Book Extension approval" Value="Book Extension approval"></asp:MenuItem>
                                <asp:MenuItem Text="Accept and Process payments" Value="Calculate and process payments"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                            <StaticMenuItemStyle HorizontalPadding="15px" VerticalPadding="2px" />
                            <StaticSelectedStyle BackColor="#5D7B9D" />
                        </asp:Menu>
                        

    </div>
    <!-- container -->
</asp:Content>
