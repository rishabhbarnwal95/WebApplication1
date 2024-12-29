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
    public partial class CRM_Assign_Complain : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlCommand objcomm;
        SqlDataAdapter objadapt;
        DataTable objdt,objdt1;
       // String Status;

        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;Initial catalog=CRM; Integrated Security=sspi";
            objcon = new SqlConnection(constr);
            //For Complain Number
            objadapt = new SqlDataAdapter("Select * from Complain", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);
            if (!IsPostBack)
            {
                foreach (DataRow dr in objdt.Rows)
                {
                    ddlcomplainnum.Items.Add(dr["ComplainNumber"].ToString());
                }
            }
            // For Employee ID
            objadapt = new SqlDataAdapter("Select * from Employee", objcon);
            objdt1 = new DataTable();
            objadapt.Fill(objdt1);
            foreach (DataRow dr in objdt1.Rows)
            {
                ddlemployeeid.Items.Add(dr["EmployeeID"].ToString());
            }
            /*// For status
            if (Status == "Completed")
            {
                txtstatus.Text = "Completed";
            }
            else
            {
                txtstatus.Text = "Not Completed";
            }*/
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMAdminpanel.aspx");
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
            string datetodsay = DateTime.Now.ToString();
            objcomm = new SqlCommand("insert into AssignComplain(DateofAssignment,ComplainNumber,Problem,Status,EmployeeID)values('"+datetodsay+"','"+ddlcomplainnum.Text+"','"+txtproblem.Text+"','"+txtstatus.Text+"','"+ddlemployeeid.Text+"')", objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            Response.Redirect("CRMAdminpanel.aspx");
        }

        protected void ddlcomplainnum_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtstatus.Text = objdt.Rows[ddlcomplainnum.SelectedIndex]["Status"].ToString();
            txtproblem.Text = objdt.Rows[ddlcomplainnum.SelectedIndex]["ProblemType"].ToString();
        }
    }
}