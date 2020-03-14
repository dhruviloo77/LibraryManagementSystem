using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibraryManagement.BooksDataSetTableAdapters;

namespace LibraryManagement
{
    public partial class WebForm15 : System.Web.UI.Page
    {

       // ProductsTableAdapter adpProducts = new ProductsTableAdapter();
        //TableProducts tblProducts = new TableProducts();

        BookTableAdapter adpBook = new BookTableAdapter();
        AuthorTableAdapter adpAuthor = new AuthorTableAdapter();
        CategoryTableAdapter adpCat = new CategoryTableAdapter();
        PublisherTableAdapter adpPub = new PublisherTableAdapter();

        BooksDataSet.BookDataTable tblBook = new BooksDataSet.BookDataTable();
        BooksDataSet.AuthorDataTable tblAuthor = new BooksDataSet.AuthorDataTable();
        BooksDataSet.PublisherDataTable tblPub = new BooksDataSet.PublisherDataTable();
        BooksDataSet.CategoryDataTable tblCat = new BooksDataSet.CategoryDataTable();

        private void RefreshGridView()
        {
            tblBook = adpBook.GetData();    // get the datatable

            grdBook.DataSource = tblBook;
            grdBook.DataBind();

            tblAuthor = adpAuthor.GetData();
            tblCat = adpCat.GetData();
            tblPub = adpPub.GetData();

            lstAuthor.DataSource = tblAuthor;
            lstAuthor.DataTextField = tblAuthor.AuthorNameColumn.ToString();
            lstAuthor.DataValueField = tblAuthor.AuthorIdColumn.ToString();
            lstAuthor.DataBind();
            lstAuthor.Items.Insert(0, new ListItem("Add Author", "-1"));
            //lstAuthor.SelectedIndex = 1;

            lstPub.DataSource = tblPub;
            lstPub.DataTextField = tblPub.PublisherNameColumn.ToString();
            lstPub.DataValueField = tblPub.PublisherIdColumn.ToString();
            lstPub.DataBind();
            lstPub.Items.Insert(0, new ListItem("Add Publisher", "-1"));
            //lstPub.SelectedIndex = 1;

            lstCat.DataSource = tblCat;
            lstCat.DataTextField = tblCat.CategoryNameColumn.ToString();
            lstCat.DataValueField = tblCat.CategoryIdColumn.ToString();
            lstCat.DataBind();
            lstCat.Items.Insert(0, new ListItem("Add Category", "-1"));
            //lstCat.SelectedIndex = 1;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RefreshGridView();
                
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int result = adpBook.Insert(txtISBN.Text, txtBookName.Text,
                            lstAuthor.SelectedValue, lstCat.SelectedValue, lstPub.SelectedValue, int.Parse(txtQuantity.Text));

            if (result == 1)
            {
                lblMessage.Text = "New Book inserted";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                RefreshGridView();
            }
            else
            {
                lblMessage.Text = "Book is not inserted";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            int idx = int.Parse(txtBookID.Text);
            tblBook = adpBook.GetDataByID(idx);

            grdBook.DataSource = tblBook;
            grdBook.DataBind();
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            RefreshGridView();
            txtBookName.Text = txtAuthor.Text = txtQuantity.Text = txtPub.Text = txtISBN.Text = txtBookID.Text = txtCat.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int idx = int.Parse(txtBookID.Text);
            int quan = int.Parse(txtQuantity.Text);

            int result = adpBook.Update(txtISBN.Text, txtBookName.Text, lstAuthor.SelectedValue, lstCat.SelectedValue, lstPub.SelectedValue, quan, idx);

            if (result == 1)
            {
                lblMessage.Text = "Book Updated.";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                RefreshGridView();
            }
            else
            {
                lblMessage.Text = "Book not Updated.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtBookID.Text);

            // call the Delete() method on the adapter
            int result = adpBook.Delete(id);

            if (result == 1)
            {
                lblMessage.Text = "Book deleted";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                RefreshGridView();
                txtBookName.Text = txtAuthor.Text = txtQuantity.Text = txtPub.Text = txtISBN.Text = txtBookID.Text = txtCat.Text = "";
            }
            else
            {
                lblMessage.Text = "Book not deleted";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnPub_Click(object sender, EventArgs e)
        {
            int result = adpPub.Insert(txtPub.Text);

            if (result == 1)
            {
                lblMessage.Text = "Publisher Inserted";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                RefreshGridView();
                txtBookName.Text = txtAuthor.Text = txtQuantity.Text = txtPub.Text = txtISBN.Text = txtBookID.Text = txtCat.Text = "";
            }
            else
            {
                lblMessage.Text = "Publisher is not inserted";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void btnAuthor_Click(object sender, EventArgs e)
        {
            int result = adpAuthor.Insert(txtAuthor.Text);

            if (result == 1)
            {
                lblMessage.Text = "Author Inserted";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                RefreshGridView();
                txtBookName.Text = txtAuthor.Text = txtQuantity.Text = txtPub.Text = txtISBN.Text = txtBookID.Text = txtCat.Text = "";
            }
            else
            {
                lblMessage.Text = "Author is not inserted";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnCat_Click(object sender, EventArgs e)
        {
            int result = adpCat.Insert(txtCat.Text);

            if (result == 1)
            {
                lblMessage.Text = "Author Inserted";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                RefreshGridView();
                txtBookName.Text = txtAuthor.Text = txtQuantity.Text = txtPub.Text = txtISBN.Text = txtBookID.Text = txtCat.Text = "";
            }
            else
            {
                lblMessage.Text = "Author is not inserted";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}