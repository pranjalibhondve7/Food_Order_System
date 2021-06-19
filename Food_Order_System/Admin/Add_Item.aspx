<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Item.aspx.cs" Inherits="Food_Order_System.Admin.Add_Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Item_Sheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><b>Add Items </b></h1>
    <div class="container">
        <div class="row form-group">

            <asp:Label ID="Label1" Class="lbl" runat="server" Text="Category : " Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="ddlcat" CssClass="form-control" runat="server">
                <asp:ListItem>--Select Category--</asp:ListItem>
                <asp:ListItem>Veg</asp:ListItem>
                <asp:ListItem>Non-Veg</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="row form-group">
            <asp:Label ID="Label2" Class="lbl" runat="server" Text="Name : " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="row form-group">

            <asp:Label ID="Label3" Class="lbl" runat="server" Text="Rate : " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtrate" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="row form-group">
            <asp:Label ID="Label4" Class="lbl" runat="server" Text="Discount : " Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txtdis" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="row form-group">
            <asp:Label ID="Label5" Class="lbl" runat="server" Text="Image : " Font-Size="Large"></asp:Label>
             <asp:Image ID="imgUser" runat="server" Width="250px" Height="250px"></asp:Image>
        <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload><br /><br />    
     
    </div>
    <div class="q">
        <asp:Button ID="btnsave" class="btn" CssClass="btn btn-danger" runat="server" Text="Save" OnClick="btnsave_Click" />
    </div>

</asp:Content>
