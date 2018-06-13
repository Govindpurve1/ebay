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
    public partial class cmsQueries : System.Web.UI.Page
    {
        Queries_BAL QObj = new Queries_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Gridview();
            }
        }

        public void Gridview()
        {
            DataSet Ds = QObj.GetAllQueries();

            dataTables.DataSource = Ds;
            dataTables.DataBind();
        }

    }
}