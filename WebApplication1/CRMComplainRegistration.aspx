<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMComplainRegistration.aspx.cs" Inherits="WebApplication1.CRM_Complain_Registration" %>

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
            background-color:#19546d;
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
        .auto-style10 {
            width: 493px;
            height: 240px;
        }
        .auto-style12 {
            height: 57px;
        }
        .auto-style13 {
            height: 54px;
        }
        body{
            background-color:#ccff66;
        }
        .auto-style14 {
            height: 131px;
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
               
            </td>
            <td width="200px">
               
            </td>
            <td width="200px">
                
            </td>
            <td width="200px">
                
            </td>
        </tr>
    </table>
    <table cellspacing="0" class="auto-style4" border="0">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style6">
              <center>  <asp:Label ID="lblcomplainregister" runat="server" Text="Label" Font-Bold="True" Font-Size="30pt"></asp:Label></center>&nbsp&nbsp&nbsp&nbsp
                <table cellspacing="0" class="auto-style10">
                    
                    
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label15" runat="server" Text="Problem Type" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:DropDownList ID="ddlproblemtype" runat="server" Height="17px" Width="169px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label16" runat="server" Text="Description" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtdescription" runat="server" Height="113px" TextMode="MultiLine" Width="283px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" BackColor="#FF9966" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="27px" Width="85px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
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
