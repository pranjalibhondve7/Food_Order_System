<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hard_Drink.aspx.cs" Inherits="Food_Order_System.Website.Hard_Drink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Drinks</title>
    
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
                <p class="fav">Our Special Drinks</p>
                <div class="box">
                    <div class="imgbx">
                        <img src="../Images/Aufseß_Bier.JPG" width="300" height="300" />
                    </div>
                    <div class="content">
                        <h6>Beer</h6>
                        <p>Beer is an alcoholic drink produced by the saccharification of starch and fermentation of the resulting sugar. 
                            The starch and saccharification enzymes are often derived from malted cereal grains, most commonly malted barley and malted wheat</p>                
                    </div>
                </div>

                <div class="box1">
                    <div class="imgbx1">
                        <img src="../Images/White-Wine-201811-004.jpg" width="300" height="300" />
                    </div>
                    <div class="content1">
                        <h6>White Wine</h6>
                        <p>
                            Wine is an alcoholic drink made from fermented grapes or other fruits.
                        </p>
                    </div>
                </div>

                <div class="box2">
                    <div class="imgbx2">
                        <img src="../Images/best-cocktails-recipe-americano-luxe-digital.jpg" width="300" height="300"  />
                    </div>
                    <div class="content2">
                        <h6>Red Wine</h6>
                        <p>
                           Wine is an alcoholic drink made from fermented grapes or other fruits.
                        </p>

                    </div>
                </div>

                <div class="box3">
                    <div class="imgbx3">
                        <img src="../Images/Apfelwein_im_Gerippten.jpg" width="300" height="300"  />
                    </div>
                    <div class="content3">
                        <h6> Cider </h6>
                        <p>
                            Cider  is an alcoholic beverage made from the fermented juice of apples.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
