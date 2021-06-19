<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="Food_Order_System.Admin.Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Item_Sheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><b>Item Details</b></h1>
    <div class="container">
        <div class="row form-group">
            <asp:Label ID="Label1" runat="server" Class="lbl" Text="Category : "></asp:Label>
            <asp:DropDownList ID="ddlcat" CssClass="form-control" runat="server">

                <asp:ListItem>--Select Item--</asp:ListItem>
                <asp:ListItem>Veg</asp:ListItem>
                <asp:ListItem>Non-Veg</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="row form-group">
            <asp:Label ID="Label2" runat="server" Class="lbl" Text="Item : "></asp:Label>
            <asp:TextBox ID="txtitem" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="q ">
        <asp:Button ID="btnsave" class="btn" CssClass="btn btn-danger" runat="server" Text="Save" OnClick="btnsave_Click" Width="100px" />
            </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="5px" CellPadding="6" CellSpacing="3" Width="800px">
            <Columns>
                <asp:BoundField HeaderText="Item_Id" DataField="Menu_Id" />
                <asp:BoundField HeaderText="Cat_Id" DataField="Menu_Category_Id" />
                <asp:BoundField HeaderText="Name" DataField="Menu_Items" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnselect" CssClass="btn btn-primary" runat="server" CommandArgument='<%#Eval("Menu_Id") %>' Text="Select" OnCommand="btnselect_Command" />
                        <asp:Button ID="btndelete" CssClass="btn btn-danger" runat="server" CommandArgument='<%#Eval("Menu_Id") %>' Text="Delete" OnCommand="btndelete_Command" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        
            <div class="row form-group p">

                <asp:Label ID="Label3" Class="lbl" runat="server" Text="Item Id : "></asp:Label>
                <asp:TextBox ID="txtitemid" CssClass="form-control" runat="server" />
            </div>
            <div class="row form-group">
                <asp:Label ID="Label4" Class="lbl" runat="server" Text="Cat_Id : "></asp:Label>
                <asp:TextBox ID="txtid" CssClass="form-control" runat="server" />
            </div>
            <div class="row form-group">
                <asp:Label ID="Label5" Class="lbl" runat="server" Text="Item Name : "></asp:Label>
                <asp:TextBox ID="txtname" CssClass="form-control" runat="server" />
            </div>
            <div class="q ">
                <asp:Button ID="btnupdate" CssClass="btn btn-info" runat="server" Text="Update" OnClick="btnupdate_Click" />
            </div>

        </div>
    
</asp:Content>
