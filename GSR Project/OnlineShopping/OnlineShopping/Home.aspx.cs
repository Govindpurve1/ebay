using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using DTO;
using System.Data;


namespace OnlineShopping
{
    public partial class Home : System.Web.UI.Page
    {
        Brands_BAL BalObj = new Brands_BAL();
        Categories_BAL CateObj = new Categories_BAL();
        Items_BAL ItemObj = new Items_BAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView();
        }

        public void GridView()
        {
            DataSet ds = ItemObj.GetAllItems();
            DataTable Dt = ds.Tables[0].AsEnumerable().Take(6).CopyToDataTable();
            Repeater1.DataSource = Dt;
            Repeater1.DataBind();

            DataSet dsB = BalObj.GetAllBrand();
            DataTable DtB = dsB.Tables[0].AsEnumerable().Take(6).CopyToDataTable();
            Repeater2.DataSource = DtB;
            Repeater2.DataBind();

            DataSet dsC = CateObj.GetAllCategories();
            DataTable DtC = dsC.Tables[0].AsEnumerable().Take(6).CopyToDataTable();
            Repeater3.DataSource = DtC;
            Repeater3.DataBind();

        }
    }
}