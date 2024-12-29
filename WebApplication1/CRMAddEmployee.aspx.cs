using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class CRM_Add_Employee : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        DataTable objdt;
        SqlCommand objcomm;
        string joinningdate;
        string Password,Usertype;
        string designation;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;initial catalog=CRM;integrated security=sspi";
            objcon = new SqlConnection(constr); ;

            
            for (int i = 1; i <= 31; i++)
            {
                ddldate.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                ddlmonth.Items.Add(i.ToString());
            }
            for (int i = 2000; i <= 2024; i++)
            {
                ddlyear.Items.Add(i.ToString());
            }
            joinningdate=ddldate.Text + "/" + ddlmonth.Text + "/" + ddlyear.Text;

            ddldesignation.Items.Add("HR");
            ddldesignation.Items.Add("Executive");
            ddldesignation.Items.Add("Peon");
            ddldesignation.Items.Add("Jnr Software Developer");
            ddldesignation.Items.Add("Snr Software Developer");

        }
        Random r;
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            objcomm = new SqlCommand("insert into Employee (EmployeeID,EmployeeName,JoinningDate,Address,Salary,Designation)values('"+txtemployeeid.Text+"','"+txtemployeename.Text+"','"+joinningdate+"','"+txtaddress.Text+"','"+txtsalary.Text+"','"+ddldesignation.Text+"')",objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            r = new Random();
            Password = r.Next().ToString();
            Usertype = "Employee";
            objcomm=new SqlCommand("insert into Login(Username,Password,Usertype)values('"+txtemployeename.Text+"','"+Password.ToString()+"','"+Usertype+"')",objcon);
            objcon.Open();
            objcomm.ExecuteNonQuery();
            objcon.Close();
            Response.Redirect("CRMAdminpanel.aspx");
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
    }
}