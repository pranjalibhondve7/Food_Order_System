
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Food_Order_System.Register" %>

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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtname" ErrorMessage="??" ForeColor="Yellow"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="row form-group">
                    <asp:Label ID="Label1" Class="lblemail" runat="server" Text="Email ID : "></asp:Label>
                    <asp:TextBox ID="txtemail" Class="txtemail" TextMode="email" placeholder="Enter Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtemail" ErrorMessage="??" ForeColor="Yellow"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Yellow"
                        SetFocusOnError="True"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     <asp:Label ID="lblmail" runat="server" Text="" ForeColor="#FFCC00" ></asp:Label>
                </div>
               


                <div class="row form-group">
                    <asp:Label ID="Label3" Class="lblmob" runat="server" Text="Mobile no. : "></asp:Label>
                    <asp:TextBox ID="txtmoblie" Class="txtmobile" TextMode="Phone" placeholder="Enter Mobile no." runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="txtmoblie" ErrorMessage="??" ForeColor="Yellow"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server"
                        ControlToValidate="txtmoblie" ErrorMessage="invalid mobile" ForeColor="Yellow"
                        MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True"
                        Type="Double"></asp:RangeValidator>
                     <asp:Label ID="lblsms" runat="server" ForeColor="#FFCC00"></asp:Label>
                </div>
               

                <div class="row form-group">
                    <asp:Label ID="lbladdress" Class="lblname" runat="server" Text="Address : "></asp:Label>
                    <asp:TextBox ID="txtaddress" Class="txtname" placeholder="Enter Address" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtaddress" ErrorMessage="??" ForeColor="Yellow"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="row form-group">
                    <asp:Label ID="lblpin" Class="lblname" runat="server" Text="Pincode : "></asp:Label>
                    <asp:TextBox ID="txtpin" Class="txtname" placeholder="Enter Pincode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="txtaddress" ErrorMessage="??" ForeColor="Yellow"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                <asp:Label ID="lblmsg" runat="server" ForeColor="#FFCC00"></asp:Label>
                </div>
                <div>
                    <asp:Button ID="btnregister" class="btnsubmit" CssClass="btn btn-danger" runat="server" Text="Register" OnClick="btnregister_Click" />
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
