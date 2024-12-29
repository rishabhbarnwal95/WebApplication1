﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMUpdateProfile.aspx.cs" Inherits="WebApplication1.CRMUpdateProfile" %>

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
        body{
    background-color:#ccff66;
}
        .auto-style10 {
            width: 500px;
            height: 300px;
        }
        .auto-style11 {
            width: 196px;
        }
        </style>
</head>
<body>
    <center>
    <form id="form2" runat="server">
        <div>
            <table cellspacing="0" class="tableformat" border="0">
                <tr>
                    <td rowspan="2" class="auto-style1">&nbsp;<img src="images/hand%20logo.jpeg" width="200px" height="200px" class="auto-style1" /></td>
                    <td class="auto-style2">
                     
                       
                        
                    </td>
                    <td class="auto-style2">
                       
                            <asp:LinkButton ID="lbtnhome" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" Font-Size="15pt" ForeColor="White">Home</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                           <asp:LinkButton ID="lbtnregister" runat="server" OnClick="LinkButton2_Click" Font-Bold="True" Font-Size="15pt" ForeColor="White">Register</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                        
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
            <td width="250px">
              <center>
                    <asp:LinkButton ID="lbtnback" runat="server" OnClick="lbtnback_Click" Font-Bold="True" ForeColor="White" >Back</asp:LinkButton>
                </center>
            </td>
            
            <td width="250px">
                &nbsp;</td>
            <td width="250px">
                &nbsp;</td>
            <td width="250px">
                &nbsp;</td>
        </tr>
    </table>
    <table cellspacing="0" class="auto-style4" border="0">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style6">
                <table cellspacing="0" class="auto-style10">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label2" runat="server" Text="Employee ID" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlemployeeid" runat="server" Height="20px" OnSelectedIndexChanged="ddlemployeeid_SelectedIndexChanged" Width="167px" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label3" runat="server" Text="Employee Name" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtemployeename" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label4" runat="server" Text="Designation" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdesignation" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label5" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" BackColor="#FF9966" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="27px" Width="85px" />
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
        </form>
    </center>
</body>
</html>
