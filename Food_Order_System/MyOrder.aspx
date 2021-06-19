<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyOrder.aspx.cs" Inherits="Food_Order_System.MyOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: coral;
            text-align: center;
        }

        .style1 {
            width: 1173px;
        }

        .style2 {
            width: 149px;
        }

        h1 {
            text-align: center;
            font-family: Algerian;
            font-size: 40px;
            margin-bottom: 12px;
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
                    <td class="tblhead"
                        style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">MY ORDER -
                <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="style1">
                            <tr>
                                <td class="style2">&nbsp;</td>
                                <td>


                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center"
                                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px"
                                        CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames="Order_Id"
                                        Width="938px">


                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                        <Columns>

                                            <asp:BoundField DataField="Email" HeaderText="Email"
                                                SortExpression="email">
                                                <ItemStyle Width="250px" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Image">
                                                <ItemTemplate>
                                                    <asp:Image ID="imgg" runat="server" ImageUrl='<%#Eval("Image") %>' Height="40px" Width="40px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:BoundField DataField="Menu_Items" HeaderText=" Name"
                                                SortExpression="pname">
                                                <ItemStyle Width="180px" />
                                            </asp:BoundField>

                                            <asp:BoundField DataField="Item_Price" HeaderText="Price" SortExpression="price" />

                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity"
                                                SortExpression="cname" />
                                            <asp:BoundField DataField="Total_Price" HeaderText="Totalprice"
                                                SortExpression="cname" />
                                            <%--<asp:TemplateField HeaderText="Dispatch">
                        <ItemTemplate>
                            <asp:LinkButton Text="Dispatch" runat="server" ID="lnkclear" CommandArgument='<%#Eval("oid") %>' ForeColor="Blue"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue"
                                            HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
