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
        SqlDataAdapter objadapt,objadapt1;
        SqlCommand objcomm;
        DataTable objdt,objdt1;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;initial catalog=CRM;integrated security=sspi";
            objcon = new SqlConnection(constr);
            
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

  

        protected void ddlemployeeid_SelectedIndexChanged1(object sender, EventArgs e)
        {
            objadapt = new SqlDataAdapter("select * from Employee where EmployeeID='"+ddlemployeeid.Text+"'", objcon);
            objdt1 = new DataTable();
            objadapt.Fill(objdt1);
            txtemployeename.Text = objdt1.Rows[0]["EmployeeName"].ToString();
            lbldate.Text = objdt1.Rows[0]["JoinningDate"].ToString();
            txtsalary.Text = objdt1.Rows[0]["Salary"].ToString();
            txtdesignation.Text = objdt1.Rows[0]["Designation"].ToString();
            txtaddress.Text = objdt1.Rows[0]["Address"].ToString();
        }
    }
}