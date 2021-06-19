<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Food_Order_System.Website.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="loginbox">
                <h2>Registration</h2>
                <%-- Welcome Sign in to your account to continue--%>
                <div class="row form-group">
                    <asp:Label ID="Label2" Class="lblname" runat="server" Text="Name : "></asp:Label>
                    <asp:TextBox ID="txtname" Class="txtname" placeholder="Enter Name" runat="server"></asp:TextBox>
                </div>

                <div class="row form-group">
                    <asp:Label ID="Label1" Class="lblemail" runat="server" Text="Email ID : "></asp:Label>
                    <asp:TextBox ID="txtemail" Class="txtemail" TextMode="email" placeholder="Enter Email" runat="server"></asp:TextBox>
                </div>

                <div class="row form-group">
                    <asp:Label ID="Label3" Class="lblmob" runat="server" Text="Mobile no. : "></asp:Label>
                    <asp:TextBox ID="txtmoblie" Class="txtmobile" TextMode="Phone" placeholder="Enter Mobile no." runat="server"></asp:TextBox>
                </div>

                <div class="row form-group">
                    <asp:Label ID="Label4" Class="lblemail" runat="server" Text="Username : "></asp:Label>
                    <asp:TextBox ID="txtuser" Class="txtemail" placeholder="Enter Username" runat="server"></asp:TextBox>
                </div>
                <div class="row form-group">
                    <asp:Label ID="Label5" Class="lblpass" runat="server" Text="Password : "></asp:Label>
                    <asp:TextBox ID="txtpass" Class="txtpass" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnsubmit" class="btnsubmit" CssClass="btn btn-danger" runat="server" Text="Submit" OnClick="btnsubmit_Click"  />
                </div>

                <div class="form-row">
                    <div class="newuser">
                        Already have account ? <a href="Login.aspx" class="link">Login</a>
                    </div>
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
