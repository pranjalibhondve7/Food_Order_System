<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Burger.aspx.cs" Inherits="Food_Order_System.Website.Burger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Veg Burger</title>
    <link href="Burger.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CLASSICA</h1>
            <h4>YOUR BURGER JOINT</h4>
            <h3><a href="Home.aspx">HOME</a></h3>
            <h2><a href="Category.aspx">Category</a></h2>
            <h5><a href="Login.aspx">Login</a></h5>
            <br />

            <div class="container">
                <div class="btn"><a href="Burger.aspx">VEG-BURGER</a></div>
                <div class="btn"><a href="Fries.aspx">FRIES</a></div>
                <div class="btn"><a href="Drink.aspx">DRINK</a></div>
            </div>
            <div class="box">
                <div class="imgbx">

                    <a href="B_Card1.aspx">
                        <img src="../Images/close-up-photo-of-burger-3915906-scaled.jpg" width="300" height="300" /></a>
                </div>
                <div class="content">
                    <h6>Chessy Burger</h6>
                    <br />
                    <p>We love Chessy Burger One of the coolest Burger around Place the chesse and green peas in ...</p>
                    <span style="color: white">5.0</span><span style="color: yellow">&starf;&starf;&starf;&starf;&starf;</span><span style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.100/-</span>
                </div>
            </div>

            <div class="box1">
                <div class="imgbx1">
                    <a href="B_Card2.aspx">
                        <img src="../Images/b11.jpg" width="300" height="300" /></a>
                </div>
                <div class="content1">
                    <h6>Veg Burger</h6>
                    <br />
                    <p>
                        Cooking in a pan: Peel and chop potatoes, carrots in small cubes.
                        Chop the beans to small pieces. Place the chopped veggies and green peas in ...
                    </p>
                    <span style="color: white">4.0</span><span style="color: yellow">&starf;&starf;&starf;&starf;&starf;</span><span style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.120/-</span>
                </div>
            </div>

            <div class="box2">
                <div class="imgbx2">
                    <a href="card1.aspx">
                        <img src="../Images/WhatsApp%20Image%202021-05-15%20at%2009.48.35.jpeg" width="300" height="300" />
                    </a>
                </div>
                <div class="content2">
                    <h6>crispy potato Burger</h6>
                    <br />
                    <p>
                        A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties
                        of ground meat, usually beef, placed inside a sliced bread roll or bun ...
                    </p>
                    <span style="color: white">5.0</span><span style="color: yellow">&starf;&starf;&starf;&starf;&starf;</span><span style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.200/-</span>
                </div>
            </div>

            <div class="box3">
                <div class="imgbx3">
                    <a href="card1.aspx">
                        <img src="../Images/WhatsApp%20Image%202021-05-15%20at%2009.48.32.jpeg" width="300" height="300" />
                    </a>
                </div>
                <div class="content3">
                    <h6>Elk Burger</h6>
                    <br />
                    <p>
                        Elk meat mixture into burger patties and cook for about 4 min on barbecue grill, 
                        over medium heat. Turn the patties and cook the other side for additional 3 min. The last minute of cooking,
                        add slice of cheddar cheese and cook for an additional minute. Serve as you prefer and enjoy ...
                    </p>
                    <span style="color: white">4.0</span><span style="color: yellow">&starf;&starf;&starf;&starf;&starf;</span><span style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.500/-</span>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
