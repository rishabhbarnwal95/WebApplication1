using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRM_Complain_Registration : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlCommand objcomm;
        string username;
        Random r;
        int complainnum;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;Initial catalog=CRM; Integrated Security=sspi";
            objcon = new SqlConnection(constr);
            if (!IsPostBack)
            {
                username = Session["Username"].ToString();
                lblcomplainregister.Text = username + " you can register here";
            }
           
            ddlproblemtype.Items.Add("Software Faulty".ToString());
            ddlproblemtype.Items.Add("Hardware Not Supported".ToString());
            ddlproblemtype.Items.Add("Database Full".ToString());
            ddlproblemtype.Items.Add("On the Laptop".ToString());
            ddlproblemtype.Items.Add("You lose your focus".ToString());
            r = new Random();
            complainnum = r.Next();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        { 
            lblcomplainregister.Text = username + " you can register here";
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string datetoday = DateTime.Now.ToString();
            string status = "Not Completed";
            username = Session["Username"].ToString();
            objcomm =new SqlCommand("Insert into ComplainRegistration(Username,ComplainNumber,ProblemType,Description)values('" + username +"','"+complainnum.ToString()+"','"+ddlproblemtype.Text+"','"+txtdescription.Text+"')",objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            objcomm = new SqlCommand("Insert into Complain(Username,ComplainNumber,ProblemType,Description,Status,DateofComplain)values('" + username + "','" + complainnum.ToString() + "','" + ddlproblemtype.Text + "','" + txtdescription.Text + "','"+status+"','"+datetoday+"')", objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            Session["Complainnum"] = complainnum.ToString();
            Response.Redirect("CRMComplainRegistrationReply.aspx");
        }
    }
}