using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;

namespace OnlineShopping
{
    public partial class Registration : System.Web.UI.Page
    {
        Registration_BAL RegObj = new Registration_BAL();
        Loginprofile LogObj = new Loginprofile();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
            
            }
        }

        protected void CreateRegistration_Click(object sender, EventArgs e)
        {
            LogObj.Firstname = Firstname.Text;
            LogObj.Lastname = Lastname.Text;
            LogObj.Birthdate=Convert.ToDateTime(Birthdate.Text);
            LogObj.Hno=Hno.Text;
            LogObj.Street=Street.Text;
            LogObj.City=City.Text;
            LogObj.State=State.Text;
            LogObj.Country=Country.SelectedValue;
            LogObj.Pincode=Pincode.Text;
            LogObj.ContactNo=ContactNo.Text;
            LogObj.Email=Email.Text;
            LogObj.Loginname=Loginname.Text;
            LogObj.Password=Password.Text;
            LogObj.Squestionid=Convert.ToInt32(Squestionid.SelectedValue);
            LogObj.Sanswer=Sanswer.Text;

            int Status = RegObj.CreateRegistration(LogObj);

            if (Status.Equals(1))
                TxtMsg.Text = "Your registration created success.";
            else
                TxtMsg.Text = "While creating registration error. Please try agin.";
        }



    }

}