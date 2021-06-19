<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="Food_Order_System.MyCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Cart</title>
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

        td, th {
            padding: 11px;
        }

        .style3 {
            width: 151px;
            text-align: center;
        }
        
        .style4 {
            text-align: center;
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


        <table class="tbl">
            <tr>
                <td class="tblhead" colspan="3" style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">MY CART -
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">&nbsp;</td>
                <td class="style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style3">&nbsp;</td>
                <td class="style4" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4"
                        ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" HorizontalAlign="Center" Width="902px" OnRowEditing="GridView1_RowEditing1"
                        DataKeyNames="Order_Id" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">

                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Sr. No">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("Order_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image runat="server" ID="imff" ImageUrl='<%#Eval("Image") %>' Height="50px" Width="45px" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:BoundField HeaderText="Item Name" DataField="Menu_Items" />

                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Item_Price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:BoundField HeaderText="Price" DataField="Item_Price" />--%>

                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    <asp:TextBox runat="server" ID="txtq" Text='<%#Eval("Quantity") %>' Height="20px" Width="40px"></asp:TextBox>
                                </ItemTemplate>
                                <%--<FooterTemplate>
                                    <asp:Label ID="LBLQtyTotal" runat="server" Font-Bold="true" ForeColor="Blue" Text="0"></asp:Label>
                                    <b>Total Amount:</b>
                                </FooterTemplate>--%>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Total_Price">
                                <ItemTemplate>
                                    <asp:Label ID="lbltotal" runat="server" Text='<%#Eval("Total_Price") %>'></asp:Label>
                                </ItemTemplate>

                                <%--<FooterTemplate>
                                    <asp:Label ID="LBLTotal" runat="server" ForeColor="Green" Font-Bold="true" Text="0.00"></asp:Label>
                                </FooterTemplate>--%>
                            </asp:TemplateField>


                            <%--<asp:BoundField HeaderText="Total_Price" DataField="Total_Price" />--%>

                            <asp:TemplateField HeaderText="Update">
                                <ItemTemplate>
                                    <%--<asp:Button ID="btnupdate" runat="server" Text="Update" ForeColor="Blue" CommandArgument='<%#Eval("Order_Id")%>' OnClick="btnupdate_Click" />--%>
                                    <asp:LinkButton runat="server" Text="Update" ID="lnkupd" CommandName="update" ForeColor="Blue" CommandArgument='<%#Eval("Order_Id") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:Button ID="btndelete" runat="server" Text="Delete" ForeColor="Red" CommandArgument='<%#Eval("Order_Id")%>' OnCommand="btndelete_Command" />
                                    <%-- <asp:LinkButton runat="server" Text="Remove" ID="lnkrem" CommandName="Delete" ForeColor="Red" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>--%>
                                </ItemTemplate>
                            </asp:TemplateField>


                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style3">&nbsp;</td>
                <td class="style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style3">&nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btncontinue" runat="server" PostBackUrl="~/Home.aspx"
                        Text="Continew Shopping" OnClick="btncontinue_Click" />
                    &nbsp;<asp:Button ID="btnchckout" runat="server" Text="CheckOut" OnClick="btnchckout_Click1" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
