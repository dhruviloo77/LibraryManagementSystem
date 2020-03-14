<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMasterPage.Master" AutoEventWireup="true" CodeBehind="mainPage.aspx.cs" Inherits="LibraryManagement.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mt-4">
            <div class="col">
                <div class="row">
                    <div class="col-6">
                        <p class="mainPageContent">
                            Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.Please click on the login button to proceed.Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.Welcome to XYZ library. You can do such and such things.
        Please click on the login button to proceed.
                        </p>
                    </div>
                    <div class="col-6 loginButton">
                        <img id="box-shadow" class="img-fluid d-block" src="images/books.jpg" />
                    </div>
                    <div class="col-4 offset-5 mt-5">
                        <asp:Button ID="btnLoginForm" runat="server" BackColor="#163664" BorderStyle="Solid" ForeColor="White" Text="Login" Font-Bold="True" Font-Size="Larger" Height="54px" Width="123px" OnClick="btnLoginForm_Click" />
                    </div>
                </div>
            </div>

        </div>
        <!-- row -->
    </div>
    <!-- container -->

</asp:Content>
