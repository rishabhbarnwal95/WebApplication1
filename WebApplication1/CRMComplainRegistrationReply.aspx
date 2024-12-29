<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMComplainRegistrationReply.aspx.cs" Inherits="WebApplication1.CRMComplainRegistrationReply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:#ccff66;
        }
        .auto-style2 {
            width: 1200px;
            height: 200px;
        }
    </style>
</head>
<body><center>
    <form id="form1" runat="server">
        <div>
            
            <table cellspacing="0" class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="lblreply" runat="server" Text="Label"></asp:Label>
                        <asp:LinkButton ID="lbtnback" runat="server" OnClick="lbtnback_Click">Back</asp:LinkButton>
                    </td>
                </tr>
            </table>
            
        </div>
    </form></center>
</body>
</html>
