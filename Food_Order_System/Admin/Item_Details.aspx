﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Item_Details.aspx.cs" Inherits="Food_Order_System.Admin.Item_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color:antiquewhite;
        }
        h1{
            text-align:center;
            margin-bottom:40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h1><b>Item Details</b></h1>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowEditing="GridView1_RowEditing"
            OnRowUpdating="GridView1_RowUpdating" Height="314px" Width="980px">
             
            <Columns>
                <asp:TemplateField HeaderText="Sr. No">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("Menu_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <ItemTemplate>
                        <asp:Label ID="lbl_catid" runat="server" Text='<%#Eval("Menu_Category_Id") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_catid" runat="server" Text='<%#Eval("Menu_Category_Id") %>' Width="80px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Item Name">
                    <ItemTemplate>
                        <asp:Label ID="lbl_items" runat="server" Text='<%#Eval("Menu_Items") %>' ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_items" runat="server" Text='<%#Eval("Menu_Items") %>' Width="80px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Rate">
                    <ItemTemplate>
                        <asp:Label ID="lbl_rate" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_rate" runat="server" Text='<%#Eval("Price") %>' Width="80px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Discount">
                    <ItemTemplate>
                        <asp:Label ID="lbl_dis" runat="server" Text='<%#Eval("Discount") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_dis" runat="server" Text='<%#Eval("Discount") %>' Width="80px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>

                        <asp:Button ID="btn_Edit" CssClass="btn btn-info" runat="server" Text="Update" CommandName="Edit" />
                        <asp:Button ID="btndelete" CssClass="btn btn-danger" runat="server" Text="Delete" CommandArgument='<%#Eval("Menu_Id") %>' OnCommand="btndelete_Command" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btn_Update" CssClass="btn btn-primary" runat="server" Text="Update" CommandName="Update" />
                        <%--<asp:Button ID="btn_Cancel" CssClass="btn btn-danger" runat="server" Text="Cancel" CommandName="Cancel" />--%>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#663300" ForeColor="#ffffff" />
            <RowStyle BackColor="#e7ceb6" />
        </asp:GridView>
    </div>
</asp:Content>
