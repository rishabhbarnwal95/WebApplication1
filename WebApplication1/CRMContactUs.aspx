<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMContactUs.aspx.cs" Inherits="WebApplication1.CRMContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .auto-style9 {
            width: 201px;
            background-color:#66c8de;
        }
        .tdB{
            background-color:#66c8de;
        }
        .auto-style6 {
            width: 587px;
            vertical-align:top;
            font-size:25px;
            background-color:white;
        }
        .auto-style7 {
            width: 1000px;
            height: 100px;
            background-color:#e6eeff;
            border-top:2px solid black;
        }
        body{
            background-color:#ccff66;
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
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style6">
                <center><asp:Label ID="Label2" runat="server" Text="Contact Us" Font-Bold="True" Font-Size="22pt" Font-Names="Berlin Sans FB Demi"></asp:Label><hr color="black"/></center>
              <center>  <p>Our office is situated at Gomti Nagar VibhutiKhand (Lucknow) 226010. Our email is <a href="mailto:crm@gmail.com">crm@gmail.com</a> or contact-220456.</p>
                <img src="images/contact.png" /></center>
            </td>
            <td class="tdB">
                &nbsp;</td>
        </tr>
    </table>
    <table cellspacing="0" class="auto-style7" border="0">
        <tr>
          <td><center>IISE Group of Institutes, Lucknow, Kalyanpur West, Mohhamadpur Khatri,226022<br />
                Important Links<br />
                <a href="http://www.CRM.com">www.CRM.com</a>, +91-9865234565<br /></center>
            </td>
        </tr>
    </table>
        </form></center>
</body>
</html>
