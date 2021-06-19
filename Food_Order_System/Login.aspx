<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Food_Order_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <%--<h1>Welcome To Classica Cafe</h1>--%>
            <div class="loginbox">
                <h2>LOGIN</h2>
                <div class="row form-group">
                    <asp:Label ID="Label2" Class="lblemail" runat="server" Text="Username : "></asp:Label>
                    <asp:TextBox ID="txtuser" Class="txtemail" placeholder="Enter Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtuser" ErrorMessage="??" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="row form-group">
                    <asp:Label ID="Label3" Class="lblpass" runat="server" Text="Password : "></asp:Label>
                    <asp:TextBox ID="txtpass" Class="txtpass" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="txtpass" ErrorMessage="??" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Button ID="btnlogin" class="btnlogin" CssClass="btn btn-danger" runat="server" Text="LOGIN" OnClick="btnlogin_Click"    />
                </div>
                <div class="form-row">
                    <div class="newuser">
                        <a href="Forgot_Pass.aspx" class="link">Forgot Password ?</a>
                    </div>
                </div>
                <div class="form-row">
                    <div class="newuser">
                        New User ? <a href="Register.aspx" class="link">Create New Account ?</a>
                    </div>
                </div>
            </div>
            <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow"></asp:Label>
        </div>
    </form>
</body>
</html>
