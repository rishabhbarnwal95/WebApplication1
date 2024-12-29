using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRM_Update_Employee1 : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        SqlCommand objcomm;
        DataTable objdt;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;initial catalog=CRM;integrated security=sspi";
            objcon = new SqlConnection(constr);
            ddlemployeeid.Items.Clear();
            objadapt = new SqlDataAdapter("Select * from Employee", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);
            if (!IsPostBack)
            {
                foreach (DataRow dr in objdt.Rows)
                {
                    ddlemployeeid.Items.Add(dr["EmployeeID"].ToString());
                }
            }
        }

        protected void lbtnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMAdminpanel.aspx");
        }

        protected void lbtnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void lbtnregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            objcomm = new SqlCommand("update Employee set EmployeeName='" + txtemployeename.Text + "',Address='" + txtaddress.Text + "',Salary='" + txtsalary.Text + "',Designation='" + txtdesignation.Text + "' where EmployeeID='" + ddlemployeeid.Text + "'", objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            Response.Redirect("CRMAdminpanel.aspx");
        }

        protected void ddlemployeeid_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtemployeename.Text = objdt.Rows[0]["EmployeeName"].ToString();
            lbldate.Text = objdt.Rows[0]["JoinningDate"].ToString();
            txtsalary.Text = objdt.Rows[0]["Salary"].ToString();
            txtdesignation.Text = objdt.Rows[0]["Designation"].ToString();
            txtaddress.Text = objdt.Rows[0]["Address"].ToString();
        }
    }
}