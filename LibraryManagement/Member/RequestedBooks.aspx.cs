using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement.Member
{
    public partial class RequestedBooks : System.Web.UI.Page
    {
        MyDatabaseDataSetTableAdapters.tblUser_BookTableAdapter adpUser = new MyDatabaseDataSetTableAdapters.tblUser_BookTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["issued"] as string;
            DateTime today = DateTime.Today;
            lblMessage.Text = today.Date.ToString("dd/MM/yyyy");
            adpUser.InsertByData(2,2,today.ToString("dd/MM/yyyy"),name);
            grdRequestedBooks.DataSource = adpUser.GetDataByRequest();
            grdRequestedBooks.DataBind();
        }
    }
}