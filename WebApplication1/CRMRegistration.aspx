<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMRegistration.aspx.cs" Inherits="WebApplication1.CRM_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">


        .tableformat {
            width: 1000px;
            height: 200px;
            background-color:#e6eeff;
        }
        .auto-style1 {
            height:200px;
            width: 200px;
            background-color:#e6eeff;
        }
        .auto-style2 {
            width:400px;
            height: 50px;
            text-align:right;
            background-color:#19546d;
        }
        .CRMformat{
            width:800px;
            height:150px;
        }
        .auto-style3 {
            width: 1000px;
            height: 50px;
            background-color:#19546d;
        }
        .tdformat{
            width:200px;
        }
        .auto-style4 {
            width: 1000px;
            height: 500px;
            background-color:lightskyblue;
        }
        .auto-style9 {
            width: 201px;
        }
        .auto-style7 {
            width: 1000px;
            height: 100px;
            background-color:#19546d;
        }
        .auto-style10 {
            margin:auto;
            width: 900px;
            height: 450px;
            background-color: #88ec90;
            border-style: ridge;
            border-width: 5px;
            border-color: goldenrod;
            padding: 20px;
            
        }
        body{
            background-color:#ccff66;
        }
        .footer-links {
            color: white;
            padding: 20px;
        }

        .footer-link {
            color: white;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <div>
            <table cellspacing="0" class="tableformat" border="0">
                <tr>
                    <td rowspan="2" class="auto-style1">&nbsp;<img src="images/hand%20logo.jpeg" width="200px" height="200px" class="auto-style1" /></td>
                    <td class="auto-style2">
                     
                        
                        
                    </td>
                    <td class="auto-style2">
                       
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Bold="True" Font-Size="15pt" ForeColor="White">Home</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                           <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Font-Bold="True" Font-Size="15pt" ForeColor="White">Register</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                       
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="CRMformat">
                      <center>  <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="30pt" Font-Strikeout="False" Text="Customer Relation Management "></asp:Label></center>
                    </td>
                    
                </tr>
            </table>
        </div>
    
    <table cellspacing="0" class="auto-style3" border="0">
        <tr class="tdformat">
            <td width="200px">
              <center> 
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="White">Back</asp:LinkButton>
                </center>
            </td>
            <td width="200px">
                &nbsp;</td>
            <td width="200px">
                &nbsp;</td>
            <td width="200px">
                &nbsp;</td>
            <td width="200px">
                &nbsp;</td>
        </tr>
    </table>
    <table cellspacing="0" class="auto-style4" border="0">
        <tr>
            <td class="auto-style9">
                <table cellspacing="0" class="auto-style10">
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Username" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                            <asp:Button ID="btncheckavailability" runat="server" Text="Check Availability" OnClick="btncheckavailability_Click" />
                            <asp:Label ID="lblcheckavailability" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Country" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlcountry" runat="server" Height="16px" Width="168px" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label18" runat="server" Text="State" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlstate" runat="server" Height="16px" Width="168px" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox>
                       <asp:Label ID="lblconfirmpass" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label19" runat="server" Text="City" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlcity" runat="server" Height="16px" Width="168px" >
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Phone No." Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtphonenum" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label20" runat="server" Text="Pincode" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label21" runat="server" Text="House No./Street" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txthousenum" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="rbtnmale" runat="server" Text="Male" />
                            <asp:RadioButton ID="rbtnfemale" runat="server" Text="Female" />
                            <asp:RadioButton ID="rbtnother" runat="server" Text="Other" />
                        </td>
                        <td>
                            <asp:Label ID="Label22" runat="server" Text="Captcha" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="lblcaptcha" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Date of Birth" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                        <asp:Label ID="lbldate" runat="server" Text="DD"></asp:Label>
                        <asp:DropDownList ID="ddldate" runat="server" Height="16px" Width="50px">
                        </asp:DropDownList>
                        <asp:Label ID="lbldate0" runat="server" Text="MM"></asp:Label>
                        <asp:DropDownList ID="ddlmonth" runat="server" Height="16px" Width="46px">
                        </asp:DropDownList>
                        <asp:Label ID="lbldate1" runat="server" Text="YYYY"></asp:Label>
                        <asp:DropDownList ID="ddlyear" runat="server" Height="16px" Width="81px">
                        </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label23" runat="server" Text="Enter Captcha" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtentercaptcha" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                           <center> <asp:CheckBox ID="checkdeclaration" runat="server" Text="I accept that above information is valid" /></center>
                        <asp:Label ID="lbldeclaration" runat="server" Text="Label"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="4">
                        <center><asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" BackColor="#FF9966" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="27px" Width="85px" />
                            <asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
                            </center> 
                        </td>
                       
                    </tr>
                </table>
                
            </td>
            
        </tr>
    </table>
    <table cellspacing="0" class="auto-style7" border="0">
        <tr>
                    <td><center>

                  <span class="footer-links">
    <a href="mailto:crmindia@gmail.com" class="footer-link">crmindia@gmail.com</a> |
    <a href="tel:+919865234565" class="footer-link">+91-9865234565</a> 
                      <p>&copy; 2025 Your Company Name. All rights reserved.</p>
                  </span>
<span class="footer-social">
   <b> Follow us: </b>
    <a href="#" class="footer-link">Facebook</a> |
    <a href="#" class="footer-link">Twitter</a> |
    <a href="#" class="footer-link">Instagram</a>
</span>
                </center>
            </td>
        </tr>
    </table>
        </center>
    </form>
</body>
</html>
