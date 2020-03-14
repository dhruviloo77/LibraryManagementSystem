using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace LibraryManagement
{

    public partial class WebForm5 : System.Web.UI.Page
    {
        MyDatabaseDataSetTableAdapters.tblUserTableAdapter adpUser = new MyDatabaseDataSetTableAdapters.tblUserTableAdapter();
        MyDatabaseDataSet.tblUserDataTable tblUser = new MyDatabaseDataSet.tblUserDataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = Encryptor.EncryptText(txtPassword.Text.Trim());


            tblUser = adpUser.GetUserByUsernameAndPassword(username, password);

            if (tblUser.Count == 1)
            {
                var row = tblUser[0];
                FormsAuthentication.Initialize();
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                    1,
                    username,
                    DateTime.Now,
                    DateTime.Now.AddMinutes(30),
                    chkRememberMe.Checked,
                    row.Role,
                    FormsAuthentication.FormsCookiePath);
                string hashedTicket = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hashedTicket);

                if (ticket.IsPersistent)
                {
                    cookie.Expires = ticket.Expiration;
                }
                Response.Cookies.Add(cookie);

                string returnUrl = Request.QueryString["ReturnUrl"];
                if (returnUrl == null)
                {
                    if (row.Role == "Admin")
                    {
                        returnUrl = "~/Admin/";
                    }
                    else if (row.Role == "Librarian")
                    {
                        returnUrl = "~/Librarian/";
                    }
                    else if (row.Role == "Member")
                    {
                        returnUrl = "~/Member/";
                    }
                    else
                    {
                        returnUrl = "~/";
                    }
                }

                Session["username"] = username;
                Session["Role"] = row.Role;

                Response.Redirect(returnUrl);

            }
            else
            {
                lblMessage.Text = "Login failed, try again";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/mainPage.aspx");
        }
    }
}