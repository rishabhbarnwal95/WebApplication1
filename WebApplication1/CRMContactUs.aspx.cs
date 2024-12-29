using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRMContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }

        protected void lbtncontact_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMContactUs.aspx");
        }

        protected void lbtnabout_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMAboutUs.aspx");
        }

        protected void lbtnhelp_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMFAQ.aspx");
        }
    }
}