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
    public partial class Order : System.Web.UI.Page
    {
        Orders_BAL OrderBal = new Orders_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginID"] != null)
            {
                int LoginID = Convert.ToInt32(Session["LoginID"]);
                Gridview(LoginID);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        public void Gridview(int LoginID)
        {
            
            DataSet Ds = OrderBal.GetAllOrders(LoginID);

            dataTables.DataSource = Ds;
            dataTables.DataBind();
        }


        protected void lnkdelete_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = sender as LinkButton;

            GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
            int id = Convert.ToInt32(dataTables.DataKeys[gvrow.RowIndex].Value.ToString());
            int Status = OrderBal.DeleteOrder(id);

            if (Status.Equals(1))
                TxtMsg.Text = "Order deleted success.";
            else
                TxtMsg.Text = "While delete oreder error. Please try agin.";
            int LoginID = Convert.ToInt32(Session["LoginID"]);
            Gridview(LoginID);
        }

    

    }
}