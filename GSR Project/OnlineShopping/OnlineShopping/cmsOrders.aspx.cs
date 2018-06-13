using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;

namespace OnlineShopping
{
    public partial class cmsOrders : System.Web.UI.Page
    {
        Orders_BAL OrderBal = new Orders_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Gridview();
        }

        public void Gridview()
        {
            DataSet Ds = OrderBal.GetAllOrders(0);

            dataTables.DataSource = Ds;
            dataTables.DataBind();
        }
    }
}