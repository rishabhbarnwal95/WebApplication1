using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRMEmployeepanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblwelcome.Text = "Welcome " + Session["username"].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }

        protected void lbtnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void lbtnupdatestatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMUpdateStatus.aspx");
        }

        protected void lbtnupdateprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMUpdateProfile.aspx");
        }

        protected void lbtnchangepassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMChangePassword.aspx");
        }
    }
}