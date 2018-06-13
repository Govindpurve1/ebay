using BAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class FeedBack : System.Web.UI.Page
    {
        FeedBack_BAL BalObj = new FeedBack_BAL();

        #region Load page
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LoginID"] != null)
                {
                    DDLLoading();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        #endregion

        #region Load ddls
        public void DDLLoading()
        {
           DataSet ds= BalObj.GetFeedBackDDL();

           if (ds.Tables[0].Rows.Count > 0)
           {
               //Dispose the Dataset first.
               ds.Dispose();
               DDLBrands.Items.Clear();
               DDLBrands.DataSource = ds.Tables[0];
               DDLBrands.DataTextField = "BrandName";
               DDLBrands.DataValueField = "BrandID";
               DDLBrands.DataBind();
               DDLBrands.Items.Insert(0, new ListItem("-- Select any brand --", "0"));
           }

           if (ds.Tables[1].Rows.Count > 0)
           {
               //Dispose the Dataset first.
               ds.Dispose();
               DDLCategory.Items.Clear();
               DDLCategory.DataSource = ds.Tables[1];
               DDLCategory.DataTextField = "CategoryName";
               DDLCategory.DataValueField = "CategoryID";
               DDLCategory.DataBind();
               DDLCategory.Items.Insert(0, new ListItem("-- Select any category --", "0"));
           }

           if (ds.Tables[2].Rows.Count > 0)
           {
               //Dispose the Dataset first.
               ds.Dispose();
               DDLItems.Items.Clear();
               DDLItems.DataSource = ds.Tables[2];
               DDLItems.DataTextField = "ItemName";
               DDLItems.DataValueField = "ItemID";
               DDLItems.DataBind();
               DDLItems.Items.Insert(0, new ListItem("-- Select any item --", "0"));
           }

        }
        #endregion

        #region Create feedback
        protected void CreateFeedback_Click(object sender, EventArgs e)
        {
            Feedback obj = new Feedback();

            obj.LoginID = Convert.ToInt32(Session["LoginID"].ToString()); 

            obj.Brandid = Convert.ToInt32(DDLBrands.SelectedValue);
            obj.Categoryid = Convert.ToInt32(DDLCategory.SelectedValue);
            obj.Itemid = Convert.ToInt32(DDLItems.SelectedValue);
            obj.Feedbackdesc1 = FeedbackDesc.Text;

          int Status=  BalObj.CreateFeedBack(obj);

            if (Status.Equals(1))
                TxtMsg.Text = "Feedback created success.";
            else
                TxtMsg.Text = "While creating Feedback error. Please try agin.";

        }
        #endregion
    }
}