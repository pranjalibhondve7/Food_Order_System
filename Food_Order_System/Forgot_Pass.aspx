<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_Pass.aspx.cs" Inherits="Food_Order_System.Forgot_Pass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Forgot_Pass.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="loginbox">
                <h2>FORGOT PASSWORD</h2>

                <div class="row form-group">
                    <asp:Label ID="Label1" Class="lblemail" runat="server" Text="Email ID : "></asp:Label>
                    <asp:TextBox ID="txtuser" Class="txtemail" placeholder="Enter Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtuser" ErrorMessage="??" ForeColor="Yellow"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtuser" ErrorMessage="invalid email" ForeColor="Yellow"
                        SetFocusOnError="True"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>

                <div class="row form-group">
                    <asp:Label ID="Label2" Class="lblemail" runat="server" Text="Mobile No : "></asp:Label>
                    <asp:TextBox ID="txtmob" Class="txtemail" placeholder="Enter Mobile No" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtmob" ErrorMessage="??" ForeColor="Yellow"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="row form-group">
                    <asp:Button ID="btnsubmit" class="btnsubmit" CssClass="btn btn-danger" runat="server" Text="Get Password" OnClick="btnsubmit_Click" />
                </div>

                 <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow"></asp:Label>
                <div class="row form-group">
                    <div class="newuser">
                        <a href="Login.aspx" class="link">Login Now!</a>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
