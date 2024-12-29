using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    public partial class CRM_Home : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        DataTable objdt;
        protected void Page_Load(object sender, EventArgs e)
        {
            String constr;
            constr = @"Data Source=RISHABH\SQLEXPRESS;initial catalog=CRM;integrated security=sspi";
            objcon = new SqlConnection(constr);
            lbllogin.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            lbllogin.Visible = true;
            objadapt = new SqlDataAdapter("select * from login where username='" + txtname.Text + "' and password='" + txtpassword.Text + "' ", objcon);
            DataTable objdt = new DataTable();
            objadapt.Fill(objdt);

            if (objdt.Rows.Count > 0)
            {
                Session["username"] = objdt.Rows[0]["username"].ToString();

                if (objdt.Rows[0]["usertype"].ToString() == "Admin")
                {
                    Response.Redirect("CRMAdminpanel.aspx");
                }
                else if (objdt.Rows[0]["usertype"].ToString() == "Employee")
                {
                    Response.Redirect("CRMEmployeepanel.aspx");
                }
                else
                {
                    Response.Redirect("CRMUserpanel.aspx");
                }
            }
            else
            {
                lbllogin.Text = "Invalid User";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
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