using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class CRMUpdateStatus : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        SqlCommand objcomm;
        DataTable objdt;
        String Status;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;Initial catalog=CRM; Integrated Security=sspi";
            objcon = new SqlConnection(constr);
            ddlcomplainnumber.Items.Clear();
            objadapt = new SqlDataAdapter("Select * from Complain", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);
            foreach(DataRow dr in objdt.Rows)
            {
                ddlcomplainnumber.Items.Add(dr["ComplainNumber"].ToString());
            }

            ddlstatus.Items.Add("Completed");
            ddlstatus.Items.Add("Not Completed");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void lbtnregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String datetoday = DateTime.Now.ToString();
            objcomm = new SqlCommand("Insert into TrackComplain(ComplainNumber,Workdone,Dateofupdate,status)values('"+ddlcomplainnumber.Text+"','"+txtworkdone.Text+"','"+datetoday+"','"+ddlstatus.Text+"')",objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            Response.Redirect("CRMEmployeepanel.aspx");
        }

        protected void lbtnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMEmployeepanel.aspx");
        }
    }
}