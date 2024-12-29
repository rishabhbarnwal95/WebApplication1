using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRM_Feedback : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlCommand objcomm;
        string username;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;Initial catalog=CRM; Integrated Security=sspi";
            objcon = new SqlConnection(constr);
            if (!IsPostBack)
            {
                username = Session["username"].ToString();
                lblusername.Text = username;
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string datetoday = DateTime.Now.ToString();
            objcomm = new SqlCommand("Insert into feedback(FeedbackDate,Username,Feedback)values('"+datetoday+"','" + lblusername + "','" + txtfeedback.Text + "')", objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            Response.Redirect("CRMUserpanel.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMUserpanel.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }
    }
}