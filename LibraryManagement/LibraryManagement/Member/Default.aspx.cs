using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BooksDataSetTableAdapters.BooksTableAdapter adpBooks = new BooksDataSetTableAdapters.BooksTableAdapter();
        BooksDataSetTableAdapters.Books2TableAdapter adpBooks2 = new BooksDataSetTableAdapters.Books2TableAdapter();
        BooksDataSet.BooksDataTable tblBooks = new BooksDataSet.BooksDataTable();
        BooksDataSet.Books2DataTable tblBooks2 = new BooksDataSet.Books2DataTable();
        
        string select;
        string search;
        public string issuedBook { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            select = rdoTitle.Text;
            search = txtEnterKeyword.Text.Trim();
            string username = Session["username"] as string;
            imagButton.ImageUrl = "~/Resources/" + username + ".jpg";
            lblMessage.Text = issuedBook;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            search = txtEnterKeyword.Text.Trim();
            if (txtEnterKeyword.Text == "")
            {
                tblBooks2 = adpBooks2.GetData();
            }
            else
            {
                if (rdoTitle.Checked)
                    tblBooks2 = adpBooks2.GetDataBySearch(search);
                else if (rdoAuthor.Checked)
                    tblBooks2 = adpBooks2.GetDataByAuthor(search);
                else if (rdoCategory.Checked)
                    tblBooks2 = adpBooks2.GetDataByCategory(search);
                else if (rdoPublisher.Checked)
                    tblBooks2 = adpBooks2.GetDataByPublisher(search);
            }
            grdBooks.DataSource = tblBooks2;
            grdBooks.DataBind();
        }

        protected void btnIssue_Click(object sender, EventArgs e)
        {
           issuedBook = drpIssueBooks.SelectedValue;

                Session["issued"] = issuedBook;
                Session["id"] = drpIssueBooks.DataValueField.ToString();
                lblMessage.Text = Session["issued"].ToString();
        }

    }
}