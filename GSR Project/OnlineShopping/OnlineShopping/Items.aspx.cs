using BAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class Items : System.Web.UI.Page
    {
        Items_BAL ObjBal = new Items_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginID"] != null)
            {
                grid();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        public void grid()
        {
            DataSet Brands = ObjBal.GetAllItems();
            Repeater1.DataSource = Brands;
            Repeater1.DataBind();

        }
    }
}