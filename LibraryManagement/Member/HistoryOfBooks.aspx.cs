using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyDatabaseDataSetTableAdapters.tblUser_BookTableAdapter adpUser = new MyDatabaseDataSetTableAdapters.tblUser_BookTableAdapter();
            MyDatabaseDataSet.tblUser_BookDataTable tbluser = new MyDatabaseDataSet.tblUser_BookDataTable();

            tbluser = adpUser.GetData();
            GridView1.DataSource = tbluser;
            GridView1.DataBind();
        }
    }
}