using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CRMComplainRegistrationReply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String complainnum=Session["Complainnum"].ToString();
            lblreply.Text = "Your Complain is registered and your complain number is "+complainnum;
        }

        protected void lbtnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMUserpanel.aspx");
        }
    }
}