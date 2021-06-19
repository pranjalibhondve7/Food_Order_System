<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thanks.aspx.cs" Inherits="Food_Order_System.Thanks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style >
        body{
            background-color:coral;
            text-align:center;
        }
        .style1
        {
            width: 100%;
            height: 154px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="style1">
                <tr>
                    <td style="color: #FFFFCC; font-weight: bold; font-size: xx-large">
                        <br />
                        Thank you for Shopping...</td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="btn"
                            PostBackUrl="~/Defaults.aspx" Text="Continew Shopping" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
