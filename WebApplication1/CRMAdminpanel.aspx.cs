using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRM_Admin : System.Web.UI.Page
    {
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                username = Session["username"].ToString();
                lblwelcome.Text = "Welcome " + username;
            }
        }

        protected void lbtnaddemployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMAddEmployee.aspx");
        }

        protected void lbtnupdateemployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMUpdateEmployee.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMAssignComplain.aspx");
        }

        protected void lbtnviewcomplain_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMViewComplain.aspx");
        }

        protected void lbtnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void lbtnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void lbtnregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }
    }
}