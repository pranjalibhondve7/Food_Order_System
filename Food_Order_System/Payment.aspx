<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Food_Order_System.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: coral;
            text-align: center;
        }

        table {
            text-align: center;
        }

        .style3 {
            text-align: center;
        }

        .style4 {
            text-align: center;
        }

        .style5 {
            width: 339px;
            text-align: center;
        }

        .style6 {
            /*text-align: center;*/
            text-align: right;
            color: #fff;
            font-size: 20px;
            height: 35px;
            width: 175px;
        }

        .style7 {
            width: 175px;
            text-align: center;
        }

        .style8 {
            width: 348px;
            text-align: center;
        }

        .style9 {
            width: 331px;
            text-align: center;
        }

        .style10 {
            width: 221px;
            text-align: center;
        }

        h1 {
            text-align: center;
            font-family: Algerian;
            font-size: 40px;
            margin-bottom: 12px;
        }

        td, th {
            padding: 7px;
            text-align: center;
        }

        .tbl {
            text-align: center;
        }
    </style>

</head>
<body>
    <%--data-key="rzp_test_YVyvte56bvtvkV">--%>
    <form id="form1" runat="server">
        <header>
            <nav class="nav">
                <div class="nav_title"></div>
                <section class="well well__offset-1 bg-1">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label Text="" runat="server" ID="Label1"></asp:Label>
                            </div>
                            <div class="col-md-1">
                                <a href="Home.aspx">Home</a>
                            </div>
                            <div class="col-md-2">
                                <a href="Login.aspx">My Account</a>
                            </div>
                            <div class="col-md-2">
                                <a href="MyOrder.aspx">My Order</a>
                            </div>
                            <div class="col-md-2">
                                <a href="MyCart.aspx">My Cart</a>
                            </div>
                            <div class="col-md-1">
                                <a href="Defaults.aspx">LogOut</a>
                            </div>

                        </div>
                    </div>
                </section>
            </nav>

        </header>
        <h1>Welcome To Classica Cafe</h1>



        <div>
            <table class="tbl">
                <tr>
                    <td class="tblhead" colspan="6" style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">Payment Checkout</td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td class="style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td class="style4" colspan="2">
                        <table align="center" class="style5">
                            <tr>
                                <td class="style6">Total Amount :
                                </td>
                                <td align="left">
                                    <asp:Label ID="lblamt" runat="server" ForeColor="#FFFFCC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">Payment Type :
                                </td>
                                <td align="left">
                                    <asp:RadioButton ID="rdoonine" runat="server" AutoPostBack="True"
                                        ForeColor="#FFFFCC" GroupName="a"
                                        Text="Online" OnCheckedChanged="rdoonine_CheckedChanged" />
                                    <asp:RadioButton ID="rdooffline" runat="server" AutoPostBack="True"
                                        ForeColor="#FFFFCC" GroupName="a"
                                        Text="Offline" OnCheckedChanged="rdooffline_CheckedChanged" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td class="style4">
                        <table align="center" class="style8">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:MultiView ID="MultiView1" runat="server">
                                        <asp:View ID="View1" runat="server">
                                            <table class="style9">
                                                <tr class="form-group">
                                                    <td class="lbl">Customer Id</td>
                                                    <td>
                                                        <asp:TextBox ID="txtCustomerId" Class="form-control" runat="server" /></td>
                                                </tr>
                                                <tr>

                                                    <td class="lbl">Name :
                                                    </td>
                                                    <td align="left">                                                        
                                                        <asp:TextBox ID="txtname" Class="form-control" CssClass="txt" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">Email ID :
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtemail" Class="form-control" runat="server" CssClass="txt"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">Mobile No. :
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtmob" Class="form-control" runat="server" CssClass="txt" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td class="lbl">Amount :
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtamt" Class="form-control" runat="server" CssClass="txt"></asp:TextBox>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td align="left">
                                                        <%--<form action="RazorpayCallBack.aspx" method="post">
                                                            <script
                                                                src="https://checkout.razorpay.com/v1/checkout.js"
                                                                data-key="rzp_test_IUqqR0HY4t8VSj"
                                                                data-amount="<%=amount%>"
                                                                data-name="<%=name%>"
                                                                data-description="<%=product%>"
                                                                data-order_id="<%=orderId%>"
                                                                data-image="https://razorpay.com/favicon.png"
                                                                data-buttontext="Pay with Razorpay"
                                                                data-prefill.name="<%=name%>"
                                                                data-prefill.email="<%=email%>"
                                                                data-prefill.contact="<%=contact%>"
                                                                data-theme.color="#F37254">
                                                            </script>
                                                        </form>--%>
                                                        <asp:Button ID="btnpayonline" runat="server" CssClass="btn"
                                                            Text="Pay Now" OnClick="btnpayonline_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:View>
                                        <asp:View ID="View2" runat="server">
                                            <table class="style10">
                                                <tr>
                                                    <td style="color: #FFFFCC; font-weight: 700;">CASH ON DELIVERY</td>
                                                </tr>
                                                <tr>
                                                    <td style="color: #FFFFCC">Total Amount :
                                                            <asp:Label ID="lblamtt" runat="server"></asp:Label>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="btnpayoffline" runat="server" CssClass="btn"
                                                            Text="PayNow" OnClick="btnpayoffline_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:View>
                                    </asp:MultiView>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td class="style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
<%-- OnCheckedChanged="rdoonine_CheckedChanged"--%>