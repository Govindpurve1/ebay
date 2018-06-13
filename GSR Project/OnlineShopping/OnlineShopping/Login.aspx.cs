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
    public partial class Login : System.Web.UI.Page
    {
        LoginAccess_BAL BalObj = new LoginAccess_BAL();
        Loginprofile LogPro = new Loginprofile();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }
        }

        protected void LoginAccess_Click(object sender, EventArgs e)
        {
            LogPro.Loginname = Loginname.Text;
            LogPro.Password = Password.Text;
            DataSet UserDs = BalObj.GetUserLoginInfo(LogPro);
            if (UserDs.Tables[0].Rows.Count != 0)
            {
                Session["UserInfo"] = UserDs;
                string LoginID = UserDs.Tables[0].Rows[0][0].ToString();
                string LogTyp = UserDs.Tables[0].Rows[0][1].ToString();
                string LoginName = UserDs.Tables[0].Rows[0][2].ToString();
                Session["LoginID"] = LoginID;
                Session["LoginName"] = LoginName;
                if (LogTyp == "Admin")
                {
                    Response.Redirect("cmsAdmin.aspx");
                }
                else if (LogTyp == "Accountant")
                {
                    Response.Redirect("cmsAdmin.aspx");
                }
                else if (LogTyp == "StoreManager")
                {
                    Response.Redirect("cmsAdmin.aspx");
                }
                else if (LogTyp == "Customer")
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    TxtMsg.Text = "We could not find this user.";
                    //Response.Redirect("Login.aspx");
                }
            }
            else
            {
                TxtMsg.Text = "We could not find this user.";
              //  Response.Redirect("Login.aspx");
            }

        }


    }
}