<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Food_Order_System.Website.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <%--<link href="../Content/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="Home_Style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <h2>Carousel Example</h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="food2.jpg" alt="Veg" style="width: 100%;"/>
                    </div>

                    <div class="item">
                        <img src="food3.jpg" alt="Non-Veg" style="width: 100%;"/>
                    </div>

                    <div class="item">
                        <img src="img6.jpg" alt="Burger" style="width: 100%;"/>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>


        <div class="container">

            <h2><em>Welcome to </em>Just Eat..</h2>
            <h1>CLASSICA</h1>
            <h4>YOUR BURGER JOINT</h4>
            <h3><a href="Home.aspx">HOME</a></h3>
            <h2><a href="Category.aspx">CATEGORY</a></h2>
            <h5><a href="Login.aspx">Login</a></h5>
            <%--<h3>HOME-PAGE</h3>
            <h2>BLOG</h2>
            <h5>PAGES</h5>--%>

            <div class="container">
                <div class="btn"><a href="Home.aspx">HOME</a></div>
                <div class="btn"><a href="Category.aspx">CATEGORY</a></div>

            </div>
        </div>
        <br />

        <h1 class="tag" data-text=" Items">Our Special Veg-Burger Items</h1>
        <br />

        <div class="row">
            <div class="col-lg-5">
                <div class="row">
                    <div class="images">
                        <div id="zoom-in">
                            <figure>
                                <img src="../Images/b11.jpg" width="600" height="400" />
                                <p>Spicy lentil burgers</p>
                            </figure>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="row">
                    <div class="images">
                        <div id="zoom-in">
                            <figure>
                                <img src="../Images/WhatsApp%20Image%202021-05-15%20at%2009.48.32.jpeg" width="600" height="400" />
                                <p>MASH burger</p>
                            </figure>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="row">
                    <div class="images">
                        <div id="zoom-in">
                            <figure>
                                <a href="http://localhost:57495/BURGER">
                                    <img src="../Images/WhatsApp%20Image%202021-05-15%20at%2009.48.35.jpeg" width="600" height="400" />
                                    <p>Allotment burgers</p>
                                </a>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />

                            </figure>

                        </div>
                    </div>
                </div>


            </div>
        </div>

        <%--<h1 class="tag">Our Veg-Fried Items</h1>
            <br />
            <br />

            <div class="row">
                <div class="col-lg-5">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/f11.jpg" width="600" height="400" />
                                    <p>churros</p>
                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/scotch_quail_egg_recipe_edit.jpg" width="600" height="400" />
                                    <p>scotch_quail_egg</p>
                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/mcdonalds-french-fries.jpg" width="600" height="400" />
                                    <p>french-fries</p>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    </a>


                                </figure>

                            </div>
                        </div>
                    </div>


                </div>
            </div>




            <h1 class="tag">Our Special Drinks</h1>
            <br />
            <br />

            <div class="row">
                <div class="col-lg-5">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/best-cocktails-recipe-tom-collins-luxe-digital.jpg" width="600" height="400" />
                                    <p>Lemon-Drink</p>
                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/d1.jpg" width="600" height="400" />
                                    <p>Liquor</p>
                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/3410638.jpg" width="600" height="400" />
                                    <p>Lemon-cocktail</p>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />

                                </figure>

                            </div>
                        </div>
                    </div>


                </div>
            </div>--%>



        <%-- <h1 class="tag" data-text=" Items">Our Special NonVeg-Burger Items</h1>
            <br />

            <div class="row">
                <div class="col-lg-5">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/b11.jpg" width="600" height="400" />
                                    <p>Classic Veg Burger</p>
                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/Butchies-2.jpg" height="400" />
                                    <p>ME Chicken Burger</p>
                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <a href="http://localhost:57495/BURGER">
                                        <img src="../Images/Moist-Chicken-Burgers.jpg" height="400" />
                                    </a>
                                    <p>Tandoori Chicken Burger</p>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />

                                </figure>

                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <br />--%>

        <h1 class="tag" data-text=" Items">Our Special Non-Veg Items</h1>
        <br />

        <div class="row">
            <div class="col-lg-5">
                <div class="row">
                    <div class="images">
                        <div id="zoom-in">
                            <figure>
                                <img src="../Images/21a8e88f84b15722dd6f58727aa5510e.jpg" />
                                <p>Chicken-balls</p>
                            </figure>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="row">
                    <div class="images">
                        <div id="zoom-in">
                            <figure>
                                <img src="../Images/c.jpg" />
                                <p>Fried-Chicken</p>
                            </figure>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="row">
                    <div class="images">
                        <div id="zoom-in">
                            <figure>
                                <img src="../Images/How-To-Store-Fried-Chicken.jpg" />
                                <p>Chilly-Chicken</p>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />

                            </figure>

                        </div>
                    </div>
                </div>


            </div>
        </div>

        <%--<h1 class="tag" data-text=" Items">Our Special Drinks </h1>
            <br />

            <div class="row">
                <div class="col-lg-5">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/drik222.jpg" width="600" height="400" />
                                    <p>Green Wine</p>
                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/drink2.jpg" width="600" height="400" />
                                    <p>Red-Wine</p>
                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="row">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <img src="../Images/40702816-jugs-of-beer-placed-on-bar-counter-with-copyspace%20-%20Copy.jpg"  width="600" height="400" />

                                    <%--<img src="../Images/40702816-jugs-of-beer-placed-on-bar-counter-with-copyspace.jpg" />--%>
        <%--<p>Beer</p>
                                    <br />
                                    <br />
                                    <br />
                                    <br />

                                </figure>

                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>  
        </div>

    </form>
</body>
</html>
