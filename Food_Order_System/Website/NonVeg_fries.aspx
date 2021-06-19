<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonVeg_fries.aspx.cs" Inherits="Food_Order_System.Website.NonVeg_fries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>fries</title>
    <meta charset="UTF-8" />
    <meta name="description" content="Free Web tutorials" />
    <meta name="keywords" content="HTML, CSS, JavaScript" />
    <meta name="author" content="John Doe" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="NonVeg.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <h1>CLASSICA</h1>
                <h4>YOUR BURGER JOINT</h4>
                <h3><a href="Home.aspx">HOME</a></h3>
                <h2><a href="Category.aspx">CATEGORY</a></h2>
                <h5><a href="Login.aspx">LOGIN</a></h5>
                <br />
                <div class="container">
                    <div class="btn"><a href="Non_Veg.aspx">NONVEG BURGER</a></div>
                    <div class="btn"><a href="NonVeg_fries.aspx">NON-VEG FRIES</a></div>
                    <div class="btn"><a href="Hard_Drink.aspx">HARD DRINK</a></div>
                </div>
                <p class="fav">Our Non Veg Fries</p>
                <div class="box">
                    <div class="imgbx">
                        <img src="../Images/usn4dnv_fried-chicken_625x300_24_May_19.jpg" width="300" height="300"/>
                    </div>
                    <div class="content">
                        <h6>Fried Chicken</h6>
                        <p>Fried chicken is certainly delicious, and it has quite an interesting history. 
                            Here are 10 things we bet you didn't know about this revered dish.</p>                
                    </div>
                </div>

                <div class="box1">
                    <div class="imgbx1">
                        <img src="../Images/scotch_quail_egg_recipe_edit.jpg" width="300" height="300"/>
                    </div>
                    <div class="content1">
                        <h6>Fried Chicken Balls</h6>
                        <p>
                            The dish consists of small chunks of fried chicken breast meat covered in a crispy batter coating. 
                            They are often served with curry sauce, sweet and sour sauce or plum sauce.
                        </p>
                    </div>
                </div>

                <div class="box2">
                    <div class="imgbx2">
                        <img src="../Images/mutton-kola-urunda.jpg" width="300" height="300" />
                    </div>
                    <div class="content2">
                        <h6>Mutton Cola Urundai </h6>
                        <p>
                            Mutton kola urundai / mutton meat ball is so famous in Madurai hotels/Mess.
                            Mutton kola will be in the menu of all non-veg hotels in Madurai. ... 
                        </p>

                    </div>
                </div>

                <div class="box3">
                    <div class="imgbx3">
                        <img src="../Images/batter-fried-chicken.jpg.jpg" width="300" height="300" />
                    </div>
                    <div class="content3">
                        <h6> Fried Mutton Chops </h6>
                        <p>
                            The fried mutton chops are first cooked with spices and later fried in oil till crispy. ...
                        </p>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
