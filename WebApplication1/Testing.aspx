<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="WebApplication1.Testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assign Complain</title>
    <style type="text/css">
        .tableformat {
            width: 1000px;
            height: 200px;
            background-color: #e6eeff;
        }

        .auto-style1 {
            height: 200px;
            width: 200px;
            background-color: #e6eeff;
        }

        .auto-style2 {
            width: 400px;
            height: 50px;
            text-align: right;
            background-color: #19546d;
        }

        .CRMformat {
            width: 800px;
            height: 150px;
        }

        .auto-style3 {
            width: 1000px;
            height: 50px;
            background-color: #19546d;
        }

        .tdformat {
            width: 200px;
        }

        .auto-style4 {
            width: 1000px;
            height: 500px;
            background-color: #e6eeff;
        }

        .auto-style9 {
            width: 50%;
            display: inline-block;
            text-align: center;
        }

        .auto-style7 {
            width: 1000px;
            height: 100px;
            background-color: #19546d;
        }

        body {
            background-color: #ccff66;
        }

        .footer-links {
            color: white;
            padding: 20px;
        }

        .footer-link {
            color: white;
        }

        .footer-social {
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <div>
                    <table cellspacing="0" class="tableformat" border="0">
                        <tr>
                            <td rowspan="2" class="auto-style1">&nbsp;<img src="images/hand%20logo.jpeg" width="200px" height="200px" class="auto-style1" /></td>
                            <td class="auto-style2"></td>
                            <td class="auto-style2">

                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Bold="True" Font-Size="15pt" ForeColor="White">Home</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                           <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Font-Bold="True" Font-Size="15pt" ForeColor="White">Register</asp:LinkButton>&nbsp&nbsp&nbsp&nbsp
                        
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="CRMformat">
                                <center>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="30pt" Font-Strikeout="False" Text="Customer Relation Management "></asp:Label></center>
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
                        <td width="200px"></td>
                        <td width="200px"></td>
                        <td width="200px"></td>
                        <td width="200px"></td>
                    </tr>
                </table>
                <table cellspacing="0" class="auto-style4" border="0">
                    <tr>
                        <td class="auto-style9">
                            <img src="images/tom.jpg" width="200px" height="200px" />
                        </td>
                        <td class="auto-style9">
                            <img src="images/mice.png" width="200px" height="200px" />
                        </td>
                    </tr>
                </table>
                <table cellspacing="0" class="auto-style7" border="0">
                    <tr>
                        <td>
                            <center>

                                <span class="footer-links">
                                    <a href="mailto:crmindia@gmail.com" class="footer-link">crmindia@gmail.com</a> |
                        <a href="tel:+919865234565" class="footer-link">+91-9865234565</a>
                                    <p>&copy; 2025 Your Company Name. All rights reserved.</p>
                                </span>
                                <span class="footer-social">
                                    <b>Follow us: </b>
                                    <a href="#" class="footer-link">Facebook</a> |
                        <a href="#" class="footer-link">Twitter</a> |
                        <a href="#" class="footer-link">Instagram</a>
                                </span>
                            </center>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
