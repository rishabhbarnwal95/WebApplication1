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
    public partial class CRM_View_Complain : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        DataTable objdt;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = @"Data Source=RISHABH\SQLEXPRESS;Initial catalog=CRM; Integrated Security=sspi";
            
            objcon = new SqlConnection(constr);
        }
        protected void btnshow_Click(object sender, EventArgs e)
        {
            if (rbtnviewall.Checked==true)
            {
                objadapt = new SqlDataAdapter("Select * from Complain", objcon);
            }
            if(rbtncompleted.Checked==true)
            {
                objadapt = new SqlDataAdapter("Select * from Complain where Status='Completed' ", objcon);
            }
            if(rbtnnotcompleted.Checked==true)
            {
                objadapt = new SqlDataAdapter("Select * from Complain where Status='Not Completed' ", objcon);
            }
            objdt = new DataTable();
            objadapt.Fill(objdt);
            GridView1.DataSource = objdt;
            GridView1.DataBind();
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
    }
}