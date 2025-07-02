<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMAboutUs.aspx.cs" Inherits="WebApplication1.CRMAbout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
            border-style:solid;
            border-color:azure;
        }
        .tdformat{
            width:200px;
        }
        .auto-style4 {
            width: 1000px;
            height: 500px;
            background-color:#e6eeff;
        }
        .auto-style6 {
            width: 682px;
            background-color:goldenrod;
        }
        .tdB{
            background-color:khaki;
            text-align:justify;
            vertical-align:top;
            color:black;
            word-spacing:0.2px;
            padding:8px;
            font-size:15px;
            
        }
        .auto-style7 {
            width: 1000px;
            height: 100px;
            background-color:#19546d;
        }
        body{
            background-color:#ccff66;
        }
        .footer-links{
            color:white;
            padding:20px;

        }
        .footer-link {
            color: white;
        }
        </style>
</head>
<body><center>
    <form id="form2" runat="server">
        <div>
            <table cellspacing="0" class="tableformat" border="0">
                <tr>
                    <td rowspan="2" class="auto-style1">&nbsp;<img src="images/hand%20logo.jpeg" width="200px" height="200px" class="auto-style1" /></td>
                    <td class="auto-style2">
                     
                        
                        
                    </td>
                    <td class="auto-style2">
                       
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Font-Bold="True" Font-Size="15pt" ForeColor="White">Home</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                           <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Font-Bold="True" Font-Size="15pt" ForeColor="White">Register</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="CRMformat">
                      <center>  <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="30pt" Font-Strikeout="False" Text="Customer Relation Management "></asp:Label></center>
                    </td>
                    
                </tr>
            </table>
        </div>
    
    <table cellspacing="0" class="auto-style3" border="1">
        <tr class="tdformat">
            <td width="200px">
              <center> 
                  <asp:LinkButton ID="lbtnhome" runat="server" OnClick="LinkButton2_Click" Font-Bold="True" ForeColor="White">Home</asp:LinkButton>
                </center>
            </td>
            <td width="200px">
               <center>
                   <asp:LinkButton ID="lbtnregister" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="White">Register</asp:LinkButton>
                </center>
            </td>
            <td width="200px">
               <center> 
                   <asp:LinkButton ID="lbtncontact" runat="server" OnClick="lbtncontact_Click" Font-Bold="True" ForeColor="White">Contact Us</asp:LinkButton>
                </center>
            </td>
            <td width="200px">
                <center>
                    <asp:LinkButton ID="lbtnabout" runat="server" OnClick="lbtnabout_Click" Font-Bold="True" ForeColor="White">About Us</asp:LinkButton>
                </center>
            </td>
            <td width="200px">
                <center>
                    <asp:LinkButton ID="lbtnhelp" runat="server" OnClick="lbtnhelp_Click" Font-Bold="True" ForeColor="White">FAQ</asp:LinkButton>
                </center>
            </td>
        </tr>
    </table>
    <table cellspacing="0" class="auto-style4" border="0">
        <tr>
            <td class="auto-style6"><img src="images/aboutimage.png" /></td>
            <td class="tdB"> <center><h2>About Us</h2></center><b><p class="tdB">Welcome to our Customer Relation Management (CRM) platform! We are dedicated to helping businesses foster stronger relationships with their customers through innovative and user-friendly CRM solutions. Our platform is designed to streamline customer interactions, enhance communication, and boost overall efficiency.

At CRM, we believe that every business deserves the tools to succeed in today’s competitive market. Whether you are a small startup or a large enterprise, our CRM solutions are tailored to meet your unique needs. With features like contact management, sales tracking, and customer support integration, we empower you to stay connected with your customers and grow your business.</p></b></td>
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
        </form></center>
</body>
</html>
