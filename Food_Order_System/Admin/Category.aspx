<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Food_Order_System.Admin.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Category_Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><b>Category Details</b></h1>
    <div class="container">
        
        <div class="row form-group">
        <asp:Label ID="Label1" Class="lbl" runat="server" Text="Category : " Font-Size="18px"></asp:Label>
        <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox><br />
            </div>
        <div class="q">
        <asp:Button ID="btnsave" runat="server" Text="Save" class="btn" CssClass="btn btn-danger" OnClick="btnsave_Click"  />
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="6" Width="500px" CellSpacing="2">
           
            <Columns>
                <asp:BoundField DataField="Menu_Category_Id" HeaderText="CAT ID" />
                <asp:BoundField DataField="Category_Name" HeaderText="Category Name" />
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
    </div>
</asp:Content>
