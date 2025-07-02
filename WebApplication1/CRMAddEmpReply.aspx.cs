using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRMAddEmpReply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            { 
                string password = Request.QueryString["Password"]; 
                if (!string.IsNullOrEmpty(password)) 
                { 
                    lblreply.Text = "Save your generated password for change: " + password;
                }
            }
        }

        protected void lbtnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMAdminpanel.aspx");
        }
    }
}