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
    public partial class CRMUpdateProfile : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        SqlCommand objcomm;
        DataTable objdt;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;Initial catalog=CRM; Integrated Security=sspi";
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

        protected void ddlemployeeid_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtemployeename.Text = objdt.Rows[ddlemployeeid.SelectedIndex]["EmployeeName"].ToString();
            txtaddress.Text = objdt.Rows[ddlemployeeid.SelectedIndex]["Address"].ToString();
            txtdesignation.Text = objdt.Rows[ddlemployeeid.SelectedIndex]["Designation"].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration.aspx");
        }

        protected void lbtnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMEmployeepanel.aspx");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            ddlemployeeid.Items.Clear();
            objcomm = new SqlCommand("Insert into Employee(EmployeeName,Designation,Address)values('" + txtemployeename.Text + "','" + txtdesignation.Text + "','" + txtaddress + "')",objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
        }
    }
}