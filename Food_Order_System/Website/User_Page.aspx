<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Page.aspx.cs" Inherits="Food_Order_System.Website.User_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Page</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="User_Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <h1>CLASSICA</h1>
            <h4>YOUR BURGER JOINT</h4>
            <h3>HOME-PAGE</h3>
            <h2>BLOG</h2>
            <h5>PAGES</h5>
            <br />
            <div class="container">
                <div class="btn"><a href="Home.aspx">CATEGORY</a></div>
                <div class="btn"><a href="Burger.aspx">BURGER</a></div>
                <div class="btn"><a href="Fries.aspx">FRIES</a></div>
                <div class="btn"><a href="Drink.aspx">DRINK</a></div>
            </div>
        </div>
    </form>
</body>
</html>
