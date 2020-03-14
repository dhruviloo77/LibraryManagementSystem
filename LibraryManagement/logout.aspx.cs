using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace LibraryManagement
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session["Username"] = null;

            //If you want to change to login page once the user is logged out
            FormsAuthentication.RedirectToLoginPage();
            // If you want to redirect to any other page, use the below line of code
            //Response.Redirect("~/");
        }
    }
}