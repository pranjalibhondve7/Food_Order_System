<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget_Pass.aspx.cs" Inherits="Food_Order_System.Website.Forget_Pass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>forget</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Forgot.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="loginbox">
                <h2>FORGOT PASSWORD</h2>
                
                <div class="row form-group">
                    <asp:Label ID="Label2" Class="lblemail" runat="server" Text="Email ID : "></asp:Label>
                    <asp:TextBox ID="txtuser" Class="txtemail" placeholder="Enter Email" runat="server"></asp:TextBox>
                </div>

                    <asp:Button ID="btnsubmit" class="btnsubmit" CssClass="btn btn-danger" runat="server" Text="CONTINUE" />
                </div> 
                 
                
            </div>
    </form>
</body>
</html>
