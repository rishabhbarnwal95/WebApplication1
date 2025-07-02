<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMFAQ.aspx.cs" Inherits="WebApplication1.CRMHelp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FAQ</title>
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
        }
        .auto-style6 {
            width: 587px;
            background-color: #ffffff;
        }
        .auto-style7 {
            width: 1000px;
            height: 100px;
            background-color:#19546d;
        }
        body{
            background-color:#ccff66;
        }
        .faq-section {
            width: 800px;
            height:500px;
            background-color: #ffffff;
            padding: 20px;
            margin-top: 20px;
            text-align:center;
           
            
        }
        .faq-question {
            font-weight: bold;
        }
        .faq-answer {
            margin-bottom: 20px;
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
                    <asp:LinkButton ID="lbtnfaq" runat="server" OnClick="lbtnfaq_Click" Font-Bold="True" ForeColor="White" >FAQ</asp:LinkButton>
                </center>
            </td>
        </tr>
    </table>
    <table cellspacing="0" class="auto-style4" border="0">
        <tr>
            
            <td class="auto-style6"><center>
                <div class="faq-section">
            <h2>Frequently Asked Questions (FAQ)</h2>
            <div class="faq-item">
                <p class="faq-question">What is CRM?</p>
                <p class="faq-answer">CRM stands for Customer Relation Management. It is a system for managing a company's interactions with current and future customers.</p>
            </div>
            <div class="faq-item">
                <p class="faq-question">How can CRM benefit my business?</p>
                <p class="faq-answer">CRM helps businesses streamline processes, build customer relationships, increase sales, improve customer service, and increase profitability.</p>
            </div>
            <div class="faq-item">
                <p class="faq-question">Is my data secure with your CRM system?</p>
                <p class="faq-answer">Yes, we use advanced security measures to ensure that your data is protected and secure.</div>
            <div class="faq-item">
                <p class="faq-question">Can I customize the CRM to fit my business needs?</p>
                <p class="faq-answer">Absolutely! Our CRM is highly customizable to suit the specific requirements of your business.</p>
            </div>
            <div class="faq-item">
                <p class="faq-question">How do I get started with your CRM?</p>
                <p class="faq-answer">You can get started by registering on our website. Once registered, you can start exploring the features and using the CRM to manage your customer relationships.</p>
            </div>
        </div></center>
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
