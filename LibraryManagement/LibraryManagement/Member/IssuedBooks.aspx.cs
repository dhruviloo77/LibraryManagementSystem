using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        MyDatabaseDataSetTableAdapters.tblUser_BookTableAdapter adpUser = new MyDatabaseDataSetTableAdapters.tblUser_BookTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            grdIssuebooks.DataSource = adpUser.GetDataByApproved();
            grdIssuebooks.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string name = DropDownList1.SelectedValue;
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            string name = DropDownList1.SelectedValue;
            adpUser.UpdateQueryByTitle(name);
        }

        protected void btnExtension_Click(object sender, EventArgs e)
        {
            string name = DropDownList2.SelectedValue;
            adpUser.UpdateQueryByExtension(name);
        }
    }
}