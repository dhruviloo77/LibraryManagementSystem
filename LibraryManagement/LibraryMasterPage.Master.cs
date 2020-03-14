using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class LibraryMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Menu1.Items[1].Text = "Logout";
                Menu1.Items[1].NavigateUrl = "~/Logout.aspx";
            }
            else
            {
                Menu1.Items[1].Text = "Login";
                Menu1.Items[1].NavigateUrl = "~/Login.aspx";
            }
        }
    }
}