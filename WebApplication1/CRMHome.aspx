<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMHome.aspx.cs" Inherits="WebApplication1.CRM_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style.css" type="text/css"/>
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
            width: 587px;
        }
        .auto-style7 {
            width: 1000px;
            height: 100px;
            background-color:#e6eeff;
            border-top:2px solid black;
        }
        .auto-style8 {
            vertical-align:top;
            width: 200px;
            height: 150px;
        }
        body{
           background-color:#ccff66;
        } 
        /* New Sidebar Styles */
.sidebar {
    width: 170px;
    background-color: white;
    color: white;
    height: 500px;
    overflow: auto;
    float:left;
    text-align:left;
}
.sidebar a {
    display: block;
    color: black;
    font-family:'Book Antiqua';
    padding: 10px;
    text-decoration: none;
}
.sidebar a:hover {
    background-color: #575757;
}
        .auto-style9 {
            width: 176px;
        }
        </style>

</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="0" class="tableformat" border="0">
                <tr>
                    <td rowspan="2" class="auto-style1">&nbsp;<img src="images/hand%20logo.jpeg" width="200px" height="200px" class="auto-style1" /></td>
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
                <div class="sidebar">
    <a href="#home">Home</a>
    <a href="#Register">Register</a>
    <a href="#ContactUs">Contact Us</a>
    <a href="#AboutUs">About Us</a>
    <a href="#Help">Help</a>
</div>
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>
                <table cellspacing="0" class="auto-style8">
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
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
          <td><center>IISE Group of Institutes, Lucknow, Kalyanpur West, Mohhamadpur Khatri,226022<br />
                Important Links<br />
                <a href="http://www.CRM.com">www.CRM.com</a>, +91-9865234565<br /></center>
            </td>
        </tr>
    </table>
        </form></center>
</body>
</html>
