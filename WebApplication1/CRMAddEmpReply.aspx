<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRMAddEmpReply.aspx.cs" Inherits="WebApplication1.CRMAddEmpReply" %>

<!DOCTYPE html>

<head runat="server">
    <title>Complain Registration Reply</title>
    <style type="text/css">
        body {
            background-color: #ccff66;
        }

        .auto-style2 {
            width: 1200px;
            height: 200px;
            font-size: 20px;
            color: orangered;
        }

        .div {
            width: 400px;
            height: 50px;
            background-color: white;
            text-align: center;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <center>
        <form id="form1" runat="server">
            <div>

                <table cellspacing="0" class="auto-style2">
                    <tr>
                        <td>
                            <div class="div">
                                <asp:Label ID="lblreply" runat="server" Text="Label"></asp:Label>
                            </div>
                            <asp:LinkButton ID="lbtnback" runat="server" OnClick="lbtnback_Click">Back</asp:LinkButton>
                        </td>
                    </tr>
                </table>

            </div>
        </form>
    </center>
</body>
</html>

