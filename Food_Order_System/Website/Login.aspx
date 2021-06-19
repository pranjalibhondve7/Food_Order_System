<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Food_Order_System.Website.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="loginbox">
                <h2>LOGIN</h2>
                <div class="row form-group">
                    <asp:Label ID="Label2" Class="lblemail" runat="server" Text="Username : "></asp:Label>
                    <asp:TextBox ID="txtuser" Class="txtemail" placeholder="Enter Username" runat="server"></asp:TextBox>
                </div>
                <div class="row form-group">
                    <asp:Label ID="Label3" Class="lblpass" runat="server" Text="Password : "></asp:Label>
                    <asp:TextBox ID="txtpass" Class="txtpass" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnsubmit" class="btnsubmit" CssClass="btn btn-danger" runat="server" Text="LOGIN" OnClick="btnsubmit_Click"  />
                </div>
                <div class="form-row">
                    <div class="newuser">
                        <a href="Forget_Pass.aspx" class="link">Forgot Password ?</a>
                    </div>
                </div>
                <div class="form-row">
                    <div class="newuser">
                        New User ? <a href="Register.aspx" class="link">Create New Account ?</a>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
