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
    public partial class CRM_View_Status : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        DataTable objdt;
        string username;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr= @"Data Source=RISHABH\SQLEXPRESS;Initial catalog=CRM; Integrated Security=sspi";
            objcon = new SqlConnection(constr);
            ddlcomplainnum.Items.Clear();
            objadapt = new SqlDataAdapter("Select * from Complain", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);
            foreach(DataRow dr in objdt.Rows)
            {
                ddlcomplainnum.Items.Add(dr["ComplainNumber"].ToString());
            }
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

        protected void ddlcomplainnum_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            objadapt = new SqlDataAdapter("Select * from Complain where ComplainNumber='"+ddlcomplainnum.Text+"'",objcon); 
            objdt = new DataTable();
            objadapt.Fill(objdt);
            GridView1.DataSource = objdt;
            GridView1.DataBind();
        }
    }
}