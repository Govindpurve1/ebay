using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using DTO;
using System.IO;
namespace OnlineShopping
{
    public partial class cmsBrandsCreate : System.Web.UI.Page
    {
        Brand Objbnd = new Brand();
        Brands_BAL BndObj = new Brands_BAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region add brand
        protected void CreateBrand_Click(object sender, EventArgs e)
        {
            try
            {
                Objbnd.BrandName = BrandName.Text;
                Objbnd.BrandDesc = BrandDesc.Text;
             
                string Filepath = string.Empty;

                if (file.HasFile)
                {
                    string fileName = Path.GetFileName(file.PostedFile.FileName);
                    Objbnd.BrandImgUrl = fileName;
                    file.PostedFile.SaveAs(Server.MapPath("~/Images/BrandLogos") + fileName);                   
                }

                int Status = BndObj.CreateBrand(Objbnd);

                if (Status.Equals(1))
                    TxtMsg.Text = "New brand created success.";
                else
                    TxtMsg.Text = "While creating brand error. Please try agin.";
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        #endregion


    }
}