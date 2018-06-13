using BAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;

namespace OnlineShopping
{
    public partial class ItemsDisplay : System.Web.UI.Page
    {

        Items_BAL ObjBal = new Items_BAL();
        DTO.Cart crtobj = new DTO.Cart();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LoginID"] != null)
                {
                    string Id = Request.QueryString["Id"];
                    DataSet Ds = ObjBal.GetAllItems();
                    DataRow[] row = Ds.Tables[0].Select("ItemID=" + Id);
                    if (row.Count() != 0)
                    {
                        ItemID.Value = row[0].ItemArray[0].ToString();
                        ItemName.Text = row[0].ItemArray[2].ToString();
                        ItemDesc.Text = row[0].ItemArray[3].ToString();
                        Imgrl.ImageUrl = "Images/Items/" + row[0].ItemArray[4].ToString();
                        InventoryID.Value = row[0].ItemArray[9].ToString();
                        Price.Text = row[0].ItemArray[11].ToString();
                        ItemOffer.Text = row[0].ItemArray[12].ToString();

                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void ClicktoBuyOrder_Click(object sender, EventArgs e)
        {
            string itemid = ItemID.Value;
            int Qnt = Convert.ToInt32(ChkQuantity.Text);
            string Invt = InventoryID.Value;

            DataSet Ds = ObjBal.GetAllItems();
            DataRow[] row = Ds.Tables[0].Select("ItemID=" + itemid);
            if (row.Count() != 0)
            {
                int QVal = Convert.ToInt32(row[0].ItemArray[10].ToString());
                if (QVal > Qnt || QVal == Qnt)
                {                  
                    Response.Redirect("CardDetails.aspx?ItemId=" + itemid + "&Qnt=" + Qnt + "&Invt=" + Invt);
                }
                else
                {                     
                    ErrorTxt.Text = "Entered Quantity is not availble.";
                }
            }
            
        }

        protected void AddtoCart_Click(object sender, EventArgs e)
        {
            crtobj.ItemOrderId = Convert.ToInt32(ItemID.Value);
            crtobj.Quantity = Convert.ToInt32(ChkQuantity.Text);
            crtobj.Price = Convert.ToInt32(Price.Text);
            crtobj.CartId = Convert.ToInt32(Session["LoginID"].ToString());

       int  Status=   ObjBal.CreateCart(crtobj);
            if (Status.Equals(1))
                Response.Redirect("Cart.aspx");
            else
                TxtMsg.Text = "While creating cart error. Please try agin.";
            
        }


    }
}