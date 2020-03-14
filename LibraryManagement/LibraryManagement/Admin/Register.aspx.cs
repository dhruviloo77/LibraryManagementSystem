using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        MyDatabaseDataSetTableAdapters.tblUserTableAdapter adpUser = new MyDatabaseDataSetTableAdapters.tblUserTableAdapter();
        MyDatabaseDataSet.tblUserDataTable tblUser = new MyDatabaseDataSet.tblUserDataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = Encryptor.EncryptText(txtPassword.Text.Trim());
            string role = ddlRoles.SelectedValue;

            if (UserExists(username))
            {
                lblMessage.Text = "User already exists, please try again";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else if (CreateUser(username, password, role))
            {
                lblMessage.Text = "user created";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }

        }

        private bool CheckUser(string username)
        {
            int? count = adpUser.CheckUsername(username);

            return (count == 1);
        }

        private bool UserExists(string username)
        {
            int? count = adpUser.CheckUsername(username);
            return count == 1;
        }

        private bool CreateUser(string username, string password, string role)
        {
            int result = adpUser.Insert(username, password, role, "Active");
            return result == 1;
        }

        protected void ddlRoles_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}