using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRM_User : System.Web.UI.Page
    {
        DataTable objdt;
        string username;
        protected void Page_Load(object sender, EventArgs e)
        { 
            username = Session["Username"].ToString();
            lblwelcome.Text = "Welcome " + username;
        }

        protected void lbtncomplainregistration_Click(object sender, EventArgs e)
        {
            Session["Username"] = Session["Username"].ToString(); ;
            Response.Redirect("CRMComplainRegistration.aspx");

        }

        protected void lbtnviewstatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMViewStatus.aspx");
        }

        protected void lbtnfeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMFeedback.aspx");
        }

        protected void lbtnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }
    }
}