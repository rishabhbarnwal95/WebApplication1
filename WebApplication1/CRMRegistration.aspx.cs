using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WebApplication1
{
    public partial class CRM_Registration : System.Web.UI.Page
    {
        SqlConnection objcon;
        SqlDataAdapter objadapt;
        SqlCommand objcomm;
        DataTable objdt;
        string DOB;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr;
            constr = @"Data Source=RISHABH\SQLEXPRESS;initial catalog=CRM;integrated security=sspi";
            objcon = new SqlConnection(constr);
            lblcheckavailability.Visible = false;
            lblconfirmpass.Visible = false;
            lbldeclaration.Visible = false;
            lblcaptcha.Visible = false;
            lblmessage.Visible = false;
            if (!IsPostBack)
            {
                objadapt = new SqlDataAdapter("Select * from Country", objcon);
                objdt = new DataTable();
                objadapt.Fill(objdt);
                foreach (DataRow dr in objdt.Rows)
                {
                    ddlcountry.Items.Add(dr["CountryName"].ToString());
                }

                //for date
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

                // Captcha code
                Random ra = new Random();
                int noc = ra.Next(6, 8);
                string cap = "";
                int count = 0;

                do
                {
                    int ch = ra.Next(48, 123);
                    if ((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))
                    {
                        cap = cap + (char)ch;
                        count++;
                        if (count == noc)
                        {
                            break;
                        }
                    }
                } while (true);
                lbl.Text = cap;
            }
        }

        protected void btncheckavailability_Click(object sender, EventArgs e)
        {
            lblcheckavailability.Visible = true;
            objadapt = new SqlDataAdapter("Select * from login where username='" + txtusername.Text + "'", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);
            if (objdt.Rows.Count > 0)
            {
                lblcheckavailability.Text = "Username not available";
            }
            else
            {
                lblcheckavailability.Text = "Username available";
            }
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            objadapt = new SqlDataAdapter("Select * from country where Countryname='" + ddlcountry.Text + "'", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);
            ddlstate.Items.Clear();
            objadapt = new SqlDataAdapter("Select * from State where Countryid='" + objdt.Rows[0]["countryid"].ToString() + "'", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);
            foreach (DataRow dr in objdt.Rows)
            {
                ddlstate.Items.Add(dr["StateName"].ToString());
            }
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            objadapt = new SqlDataAdapter("Select * from state where statename='" + ddlstate.Text + "'", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);

            ddlcity.Items.Clear();
            objadapt = new SqlDataAdapter("Select * from city where Stateid='" + objdt.Rows[0]["stateid"].ToString() + "'", objcon);
            objdt = new DataTable();
            objadapt.Fill(objdt);
            foreach (DataRow dr in objdt.Rows)
            {
                ddlcity.Items.Add(dr["CityName"].ToString());
            }
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            objcon.Open();
            string usertype = "User";
            if (txtpassword.Text != txtconfirmpassword.Text)
            {
                lblconfirmpass.Text = "Password not match";
                lblconfirmpass.Visible = true;
            }
            else
            {

                if (lbl.Text != txtentercaptcha.Text)
                {
                    lblcaptcha.Text = "Invalid Captcha";
                    lblcaptcha.Visible = true;
                }
                else
                {
                    if (checkdeclaration.Checked == false)
                    {
                        lbldeclaration.Text = "Click on declaration";
                        lbldeclaration.Visible = true;
                    }
                    else
                    {
                        objcomm = new SqlCommand("insert into login(Username,Password,Usertype)values('" + txtusername.Text + "','" + txtpassword.Text + "','" + usertype + "')", objcon);

                        objcomm.ExecuteNonQuery();


                        string gender;
                        if (rbtnmale.Checked == true)
                        {
                            gender = "Male";
                        }
                        else
                        {
                            if (rbtnfemale.Checked == true)
                            {
                                gender = "Female";
                            }
                            else
                            {
                                gender = "Other";

                            }
                        }
                        string countyid, stateid, cityid;
                        objadapt = new SqlDataAdapter("Select * from Country where Countryname='" + ddlcountry.Text + "'", objcon);
                        objdt = new DataTable();
                        objadapt.Fill(objdt);
                        countyid = objdt.Rows[0]["countryid"].ToString();
                        objadapt = new SqlDataAdapter("Select * from State where statename='" + ddlstate.Text + "'", objcon);
                        objdt = new DataTable();
                        objadapt.Fill(objdt);
                        stateid = objdt.Rows[0]["stateid"].ToString();
                        objadapt = new SqlDataAdapter("Select * from City where Cityname='" + ddlcity.Text + "'", objcon);
                        objdt = new DataTable();
                        objadapt.Fill(objdt);
                        cityid = objdt.Rows[0]["cityid"].ToString();
                        DOB = ddldate.Text + "/" + ddlmonth.Text + "/" + ddlyear.Text;
                        string datetodsay = DateTime.Now.ToString();

                        objcomm = new SqlCommand("insert into Register(Username,Phone,Email,CountryID,StateID,CityID,Pincode,gender,DOB,DOR,Housenumber)values('" + txtusername.Text + "','" + txtphonenum.Text + "','" + txtemail.Text + "','" + countyid + "','" + stateid + "','" + cityid + "','" + txtpincode.Text + "','" + gender + "','" + DOB + "','" + datetodsay + "','"+txthousenum.Text+"')", objcon);
                        objcomm.ExecuteNonQuery();
                        objcon.Close();
                        lblmessage.Visible = true;
                        lblmessage.Text = "Sucessfully Registered";
                    }
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMHome.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRMRegistration");
        }
    }
}