using BAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class cmsItemsEdit : System.Web.UI.Page
    {
        Item ObjItem_ = new Item();
        Items_BAL ItemObj = new Items_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Id = Request.QueryString["Id"];
                LoadDDL();
                DataSet Itms = ItemObj.GetAllItems();

                DataRow[] row = Itms.Tables[0].Select("ItemID=" + Id);

                ItemID.Value = row[0].ItemArray[0].ToString();
                DDLBrand.SelectedValue = row[0].ItemArray[7].ToString();
                DDLCategory.SelectedValue = row[0].ItemArray[1].ToString();
                ItemName.Text = row[0].ItemArray[2].ToString();
                ItemDesc.Text = row[0].ItemArray[3].ToString();
                ItemImgUrl.Value = row[0].ItemArray[4].ToString();
                ItemQuantity.Text = row[0].ItemArray[10].ToString();
                ItemPrice.Text = row[0].ItemArray[11].ToString();
                Image1.ImageUrl = "Images/Items/" + row[0].ItemArray[4].ToString();
                ItemOffer.Text = row[0].ItemArray[12].ToString();
            }
        }

        #region add Items
        protected void EditItem_Click(object sender, EventArgs e)
        {
            try
            {
                ObjItem_.ItemID = Convert.ToInt32(ItemID.Value);
                ObjItem_.ImageURL = ItemImgUrl.Value;
                ObjItem_.ItemName = ItemName.Text;
                ObjItem_.ItemDesc = ItemDesc.Text;
                ObjItem_.ItemOffer = ItemOffer.Text; 
                ObjItem_.Quantity = Convert.ToInt32(ItemQuantity.Text);
                ObjItem_.Price = Convert.ToInt32(ItemPrice.Text);
                ObjItem_.BrandID = Convert.ToInt32(DDLBrand.SelectedValue);
                ObjItem_.CategoryID = Convert.ToInt32(DDLCategory.SelectedValue);
                string Filepath = string.Empty;

                if (file.HasFile)
                {
                    string fileName = Path.GetFileName(file.PostedFile.FileName);
                    ObjItem_.ImageURL = fileName;
                    file.PostedFile.SaveAs(Server.MapPath("~/Images/Items/") + fileName);
                }
                

                int Status = ItemObj.CreateItems(ObjItem_);

                if (Status.Equals(1))
                    TxtMsg.Text = "New Item created success.";
                else
                    TxtMsg.Text = "While creating Item error. Please try agin.";

                LoadDDL();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        #endregion

        public void LoadDDL()
        {
            Brands_BAL Bnds = new Brands_BAL();
            Categories_BAL cate = new Categories_BAL();
            DataSet ds = Bnds.GetAllBrand();
            DataSet dsCate = cate.GetAllCategories();

            if (ds.Tables[0].Rows.Count > 0)
            {
                //Dispose the Dataset first.
                ds.Dispose();
                DDLBrand.Items.Clear();
                DDLBrand.DataSource = ds;
                DDLBrand.DataTextField = "BrandName";
                DDLBrand.DataValueField = "BrandID";
                DDLBrand.DataBind();
                DDLBrand.Items.Insert(0, new ListItem("-- Select any brand --", "0"));
            }
            if (dsCate.Tables[0].Rows.Count > 0)
            {
                //Dispose the Dataset first.
                ds.Dispose();
                DDLCategory.Items.Clear();
                DDLCategory.DataSource = dsCate;
                DDLCategory.DataTextField = "CategoryName";
                DDLCategory.DataValueField = "CategoryID";
                DDLCategory.DataBind();
                DDLCategory.Items.Insert(0, new ListItem("-- Select any category --", "0"));
            }


        }
    }
}