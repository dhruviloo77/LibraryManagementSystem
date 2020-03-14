<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LibraryManagement.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="mx-auto text-center mt-5">
            <asp:Menu ID="Menu2" runat="server" BackColor="Aqua" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="1em" ForeColor="#0033CC" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/Member/IssuedBooks.aspx" Text="View Issued Books" Value="View Issued Books"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Member/UnpaidOverdues.aspx" Text="View Unpaid Overdues" Value="View Unpaid Overdues"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Member/HistoryOfBooks.aspx" Text="History of Books" Value="History of Books"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Member/HistoryOfDues.aspx" Text="History of Overdues paid" Value="History of Overdues paid">
                        <asp:MenuItem Text="New Item" Value="New Item"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Member/RequestedBooks.aspx" Text="Requested Books" Value="Requested Books"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <br />
            <br />
            <asp:ImageButton ID="imagButton" runat="server" Height="151px" PostBackUrl="/Member/Profile.aspx" Width="164px" />
        </div>
        <br/>
        <%--<div id = "links">
        <a href="IssuedBooks.aspx">View Issued Books</a> &nbsp | 
        <a href="UnpaidOverdues.aspx">View Unpaid Overdues</a> &nbsp |
        <a href="HistoryOfBooks.aspx">History of Books</a> &nbsp |
        <a href="HistoryOfDues.aspx">History of Any overdues paid</a>&nbsp;
            </div>--%>
       
        <div id="content">  
            <br/>
        <p>Search Books By</p>
        <p>
            <asp:RadioButton ID="rdoTitle" runat="server" GroupName="Search" Text="Title" AutoPostBack="True" Checked="True"  />
&nbsp;
            <asp:RadioButton ID="rdoAuthor" runat="server" GroupName="Search" Text="Author" AutoPostBack="True" />
&nbsp;
            <asp:RadioButton ID="rdoPublisher" runat="server" GroupName="Search" Text="Publisher" AutoPostBack="True"  />
&nbsp;
            <asp:RadioButton ID="rdoCategory" runat="server" GroupName="Search" Text="Category" AutoPostBack="True" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Enter Keyword :"></asp:Label>
&nbsp;<asp:TextBox ID="txtEnterKeyword" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" Text="Search" Width="104px" OnClick="btnSearch_Click" />
        &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="drpIssueBooks" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title" >
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnIssue" runat="server" OnClick="btnIssue_Click" Text="Issue" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString %>" SelectCommand="SELECT [Title], [BookId] FROM [Book]"></asp:SqlDataSource>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
            <asp:GridView ID="grdBooks" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"  BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" >

                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />  
            
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
&nbsp;&nbsp;
            </div>
        </div>
    
</asp:Content>
