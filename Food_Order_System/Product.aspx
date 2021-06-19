<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Food_Order_System.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style>
       body {
            background-color: coral;
            text-align: center;
        }

        .col-md-1, .col-md-4, .col-md-2 {
            font-size: 20px;
            /*background-color:burlywood;*/
        }

        .style1 {
            width: 100%;
        }

        .style2 {
            width: 388px;
            height: 255px;
        }

        .style4 {
            width: 304px;
        }

        .style6 {
            width: 36px;
        }

        .style10 {
            width: 70px;
        }

        .style14 {
            width: 291px;
            height: 55px;
        }

        .style15 {
            width: 75px;
        }

        .style16 {
            width: 210px;
        }

        h1 {
            text-align: center;
            font-family: Algerian;
            font-size: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav class="nav">
                <div class="nav_title"></div>
                <section class="well well__offset-1 bg-1">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8">
                                <asp:Label Text="" runat="server" ID="Label1"></asp:Label></div>
                            <div class="col-md-1">
                                <a href="Home.aspx">Home</a>
                            </div>
                            <div class="col-md-1">
                                <a href="Login.aspx">Login</a>
                            </div>
                            <div class="col-md-1">
                                <a href="Home.aspx">Contacts</a>
                            </div>
                        </div>
                    </div>
                </section>
            </nav>
        </header>
        <h1>Welcome To Classica Cafe</h1>
        <table class="style1">


            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3"
                        RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <table class="style2">
                                <tr>
                                    <td class="style10">&nbsp;</td>
                                    <td class="style4">
                                        <asp:Image ID="Image1" runat="server" Height="231px"
                                            ImageUrl='<%#Eval("Image") %>' Width="300px" />
                                    </td>
                                    <td class="style6">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="color: #FFFF66" class="style10">&nbsp;</td>
                                    <td class="style4" style="color: black">
                                        <table class="style14">
                                            <tr>
                                                <td class="style16">Name :
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("Menu_Items") %>'></asp:Label>
                                                </td>
                                                <td rowspan="2" valign="middle">
                                                    <table class="style15">
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="btnview" runat="server" CssClass="btn" Height="30px"
                                                                    Text="VIEW" Width="70px" CommandArgument='<%#Eval("Menu_Id") %>' />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style16">Price&nbsp; :
                                                <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class="style6" style="color: black">&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
