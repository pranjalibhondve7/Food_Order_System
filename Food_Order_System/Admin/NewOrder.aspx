<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NewOrder.aspx.cs" Inherits="Food_Order_System.Admin.NewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">NEW ORDER -
                <asp:Label ID="lbll" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px"
                    CellPadding="0" CellSpacing="0" ForeColor="Black" GridLines="None" DataKeyNames="Order_Id"
                    Width="938px" OnRowCommand="GridView1_RowCommand">


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
                        <asp:BoundField DataField="Menu_Items" HeaderText="ProductName"
                            SortExpression="pname">
                            <ItemStyle Width="180px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Item_Price" HeaderText="Price" SortExpression="price" />
                        <asp:BoundField DataField="Quantity" HeaderText="Qnt"
                            SortExpression="cname" />
                        <asp:BoundField DataField="Total_Price" HeaderText="totalprice"
                            SortExpression="cname" />
                        <asp:TemplateField HeaderText="Dispatch">
                            <ItemTemplate>
                                <asp:LinkButton Text="Dispatch" runat="server" ID="lnkclear" CommandArgument='<%#Eval("Order_Id") %>' ForeColor="Blue"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
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

</asp:Content>
