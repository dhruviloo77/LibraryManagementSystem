using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
  
    public partial class WebForm6 : System.Web.UI.Page
    {
        MyDatabaseDataSetTableAdapters.tblUserTableAdapter adpUser = new MyDatabaseDataSetTableAdapters.tblUserTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblOldPassword.Visible = lblNewPassword.Visible = btnUpdatePassword.Visible = txtOldPassword.Visible = txtNewPassword.Visible = Label1.Visible = Label2.Visible = txtUsername.Visible = txtContact.Visible = btnUpdate.Visible = FileImage.Visible = btnChange.Visible = imageButtonProfile.Visible = false;
            string username = Session["username"].ToString();
             imageButtonProfile.ImageUrl = "~/Resources/" + username + ".jpg";
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            lblOldPassword.Visible = lblNewPassword.Visible = btnUpdatePassword.Visible = txtOldPassword.Visible = txtNewPassword.Visible = true; 
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {

            if (FileImage.HasFile)
            {

                string fileName = FileImage.FileName.Trim();
                string fileExtension = Path.GetExtension(fileName).Trim();

                // check for the file extension
                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png")
                {
                    // save file in Uploads folder
                    FileImage.SaveAs(Server.MapPath("~/Resources/") + fileName);
                    imageButtonProfile.ImageUrl = "~/Resources/" + fileName; 
                    //lblMessage.Text = "File successfully uploaded";
                    lblMessage.ForeColor = Color.Green;
                }

                else
                {
                    lblMessage.Text = "Only .jpg or .png files are allowed";
                    lblMessage.ForeColor = Color.Red;
                }
            }
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            string NewPassword = Encryptor.EncryptText(txtNewPassword.Text.Trim());
            string enterName = txtUsername.Text;

            string username = Session["username"].ToString();

            adpUser.UpdateQueryPassword(NewPassword,username);
            adpUser.UpdateQueryByUser(enterName,username);

           lblMessage.Text = "Password Updated";
        }

        protected void btnUpdateInfo_Click(object sender, EventArgs e)
        {
            Label1.Visible = Label2.Visible = txtUsername.Visible = txtContact.Visible = btnUpdate.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
           
            string name = txtUsername.Text;
            string contact = txtContact.Text;

            string username = Session["username"].ToString();

            adpUser.UpdateQueryByContactInfo(name, contact, username);
            lblMessage.Text = "Contact Updated";
        }

        protected void btnPicture_Click(object sender, EventArgs e)
        {
            FileImage.Visible = btnChange.Visible = imageButtonProfile.Visible = true;
        }
    }
}