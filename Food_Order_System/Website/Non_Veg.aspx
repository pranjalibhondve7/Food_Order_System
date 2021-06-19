<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Non_Veg.aspx.cs" Inherits="Food_Order_System.Website.Non_Veg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Non Veg Item</title>
    <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" />
    <link href="NonVeg.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div>
            
            <div>
                <h1>CLASSICA</h1>
                <h4>YOUR BURGER JOINT</h4>
                <h3><a href="Home.aspx">HOME</a></h3>
                <h2><a href="Category.aspx">CATEGORY</a></h2>
                <h5><a href="Login.aspx">LOGIN</a></h5>
                <%--<h3>HOME-PAGE</h3>
                <h2>BLOG</h2>
                <h5>PAGES</h5>--%>
                <br />
                <div class="container">
                    <div class="btn"><a href="Non_Veg.aspx">NONVEG BURGER</a></div>
                    <div class="btn"><a href="NonVeg_fries.aspx">NON-VEG FRIES</a></div>
                    <div class="btn"><a href="Hard_Drink.aspx">HARD DRINK</a></div>
                </div>
                <p class="fav">Our Non-Veg Burger</p>
                <div class="box">
                    <div class="imgbx">
                        <img src="../Images/Chicken-Burger.jpg" width="300" height="300"/>
                        <%--<img src="../Images/close-up-photo-of-burger-3915906-scaled.jpg"  />--%>
                    </div>
                    <div class="content">
                        <h6>Chicken Burger with crispy cheddar Cheese</h6>
                        <p>The hidden trick to this tasty burger is crisping the cheddar cheese slices
                            in a skillet for a unique crispy topping.Hot pepper jelly and pickled jalapeno slices give unexpected bursts of flavor.</p>                
                    </div>
                </div>

                <div class="box1">
                    <div class="imgbx1">
                        <img src="../Images/Peri-Peri-chicken-burger.jpg"  width="300" height="300" />
                        <%--<img src="../Images/b11.jpg"  />--%>
                    </div>
                    <div class="content1">
                        <h6>Peri Peri Chicken Burger</h6>
                        <p>
                            I think it would be fair to say I am obsessed with Peri Peri Chicken.
                            I just LOVE it! There’s just something about that combination of flavours that I
                            can’t get enough of!
                        </p>
                    </div>
                </div>

                <div class="box2">
                    <div class="imgbx2">
                        <img src="../Images/WhatsApp%20Image%202021-05-15%20at%2009.48.32.jpeg" width="300" height="300" />
                        <%--<img src="../Images/WhatsApp%20Image%202021-05-15%20at%2009.48.35.jpeg" width="300" height="300" />--%>
                    </div>
                    <div class="content2">
                        <h6>Mutton Burger</h6>
                        <p>
                            A mutton Burger (also burger for short) is a sandwich consisting of one or more cooked patties
                        of ground meat, usually beef, placed inside a sliced bread roll or bun ...
                        </p>

                    </div>
                </div>

                <div class="box3">
                    <div class="imgbx3">
                        <img src="../Images/WhatsApp%20Image%202021-05-15%20at%2009.48.30.jpeg" width="300" height="300" />
                        <%--<img src="../Images/WhatsApp%20Image%202021-05-15%20at%2009.48.32.jpeg"  />--%>
                    </div>
                    <div class="content3">
                        <h6>Buttor Chicken Twin Burger</h6>
                        <p>
                            Made with chicken tikka coated in spicy, delicious makhani gravy filled inside a burger bun.
                            Butter chicken twin burgers are a tasty snack or appetizer for kids and adults alike!
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
