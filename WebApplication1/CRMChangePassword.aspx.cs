using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRMChangePassword : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        SqlCommand objcomm;
        DataTable objdt;
        string password;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;Initial catalog=CRM; Integrated Security=sspi";
            objcon = new SqlConnection(constr);
            password = Session["Password"].ToString();
           
            lblMessage.Visible = false;
            

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }

        protected void btnchange_Click(object sender, EventArgs e)
        {
            //byte[] tempassword = ASCIIEncoding.ASCII.GetBytes(txtpassword.Text);
            //string password = Convert.ToBase64String(tempassword);

            //byte[] tempassword1 = ASCIIEncoding.ASCII.GetBytes(txtpassword.Text);
            //string newpassword = Convert.ToBase64String(tempassword1);


            lblMessage.Visible = true;
            
           
            if(password==txtpassword.Text)
            {
                if(txtnewpassword.Text==txtconfirmpassword.Text)
                {               
                    objcomm = new SqlCommand("Update login set Password='" + txtnewpassword.Text + "' where Password='"+txtpassword.Text+"' and username='" + Session["Username"].ToString()+"'", objcon);
                    objcon.Open();
                    objcomm.ExecuteNonQuery();
                    objcon.Close();
                    lblMessage.Text = "Password changed sucesssfully";
                }
                else
                {                    
                    lblMessage.Text = "Your password does not match";
                    txtconfirmpassword.Focus();
                }
               
            }
            else
            {
                lblMessage.Text = "Your password doesn't match with database";
                txtpassword.Focus();
            }
            //Response.Redirect("CRMEmployeepanel.aspx");
        }

        protected void lbtnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMEmployeepanel.aspx");
        }
    }
}
