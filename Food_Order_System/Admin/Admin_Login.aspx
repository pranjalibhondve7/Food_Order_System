<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Food_Order_System.Admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Login_Sheet.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        h2 {
            padding: 0;
            margin-bottom: 45px;
            text-align: center;
            color: rgb(255,217,9);
        }

        .newuser {
            margin-top: 25px;
            text-align: center;
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="loginbox">
            <h2>LOGIN</h2>
            <%--<div class="row form-group">
                    <asp:Label ID="Label1" Class="lblemail" runat="server" Text="Choose Account : "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" Class="ddl1" AutoPostBack="true" runat="server">
                        <asp:ListItem >--Select--</asp:ListItem>
                        <asp:ListItem >Admin Login</asp:ListItem>
                        <asp:ListItem >User Login</asp:ListItem>
                    </asp:DropDownList>
                </div>--%>
            <div class="row form-group">
                <asp:Label ID="Label2" Class="lblemail" runat="server" Text="Email : "></asp:Label>
                <asp:TextBox ID="txtemail" TextMode="Email" Class="txtemail" placeholder="Enter Username" runat="server"></asp:TextBox>
            </div>
            <div class="row form-group">
                <asp:Label ID="Label3" Class="lblpass" runat="server" Text="Password : "></asp:Label>
                <asp:TextBox ID="txtpass" Class="txtpass" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
            </div>
            <div class="btn">
                <asp:Button ID="btnsubmit" class="btnsubmit" CssClass="btn btn-primary" runat="server" Text="LOGIN" OnClick="btnsubmit_Click" />
            </div>
            <div class="form-row">
                <div class="newuser">
                    New User ? <a href="#" class="link">Create New Account ?</a>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
