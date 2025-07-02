<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMHome.aspx.cs" Inherits="WebApplication1.CRM_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style.css" type="text/css"/>
    <title>Home</title>
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
            background-color:#19546d;
            border-style:none;
            text-align:right;
         
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
            width: 620px;
            background-color:white;
        }
          
        
        .auto-style7 {
            width: 1000px;
            height: 100px;
            background-color:#19546d;
        }
        .p3{
            font-family:Arial;
            color:white;
        }
        .auto-style8 {
            vertical-align:top;
            width: 200px;
            height: 150px;
        }
        .t1{
            text-align:justify;
            padding-left:10px;
        }
        body{
           background-color:#ccff66;
        } 
        .auto-style9 {
            width: 200px;
            height:500px;
            background-color:#e6eeff;
            color:black;
            padding:12px;
            
        }
        .p1{
            display:flex;
            font-family:'Calisto MT';
            color:orangered;
            font-size:18px;
            align-items:center;
            margin-left: 10px;
            text-decoration: none;
        }
        .a1{
            align-items:center;
            padding-left:10px;
            font-family:'Calisto MT';
            color:orangered;
            font-size:18px;
            box-shadow:
        }
        .h2{
            align-items:center;
            padding-left:10px;
            color:orangered;
        }
        .footer-links{
            color:white;
            padding:20px;
        }
        .footer-link{
            color:white;
            
        }
        .l1{
            margin-left:10px;
        }
        </style>

</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="0" class="tableformat" border="0">
                <tr>
                    <td rowspan="2" class="auto-style1">&nbsp;<img src="images/hand%20logo.jpeg"  class="auto-style1" /></td>
                    <td class="auto-style2">
                    </td>
                    <td class="auto-style2">
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Font-Bold="True" ForeColor="White" Font-Size="15pt">Home</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                           <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Font-Bold="True" ForeColor="White" Font-Size="15pt">Register</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="CRMformat">
                      <center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="30pt" Font-Strikeout="False" Text="Customer Relation Management "></asp:Label></center>
                    </td>
                    
                </tr>
            </table>
        </div>
    
    <table cellspacing="0" class="auto-style3" border="1">
        <tr class="tdformat">
            <td width="200px">
              <center> 
                  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Bold="True" ForeColor="White">Home</asp:LinkButton>
                </center>
            </td>
            <td width="200px">
               <center>
                   <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="White">Register</asp:LinkButton>
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
            <td class="auto-style9">
                <h2 class="h2">Our Roles</h2>
           <p class="p1">We innovate for future.</p>
              <asp:LinkButton ID="lbtnteams" runat="server" OnClick="lbtnteams_Click" ForeColor="Red" class="l1">Teams</asp:LinkButton>
            </td>
            <td class="auto-style6">
                <img src="images/crm.jpg" />
            </td>
            <td>
                <table cellspacing="0" class="auto-style8">
                    <tr>
                        <td class="t1">
                            <asp:Label ID="Label11" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="t1">
                            <asp:Label ID="Label12" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="t1">
                            <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" BackColor="#FF9966" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="27px" Width="65px"/>
                            <asp:Label ID="lbllogin" runat="server" Text="Label"></asp:Label>
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
        </form></center>
</body>
</html>
