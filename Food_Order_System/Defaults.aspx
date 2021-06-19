<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Defaults.aspx.cs" Inherits="Food_Order_System.Defaults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src='js/device.min.js'></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fortawesome/fsssontawesome-free@5.15.3/css/fontawesome.min.css"></script>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Home.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav class="nav">
                    <div class="nav_title"></div>
                    <section class="well well__offset-1 bg-1">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8"><asp:Label Text="" runat="server" ID="Label1"></asp:Label></div>
                                <div class="col-md-1">
                                    <a href="Home.aspx">Home</a>  
                                </div>
                                 <div class="col-md-1">
                                    <a href="Login.aspx">Login</a>  
                                </div>
                                 <div class="col-md-1">
                                    <a href="Home.aspx">Contacts</a>  
                                </div>                               
                            </div>
                        </div>
                    </section>
                </nav>



            <div class="container-fluid">
                <%--<h1>Welcome Classica Cafe</h1>--%>
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
                            <div class="carousel-caption c1">
                                <h1>Welcome Classica Cafe</h1>
                            </div>
                            <img src="Images/img6.jpg" alt="Burger" style="width: 100%; height: 80%" />

                            <%--<img src="food2.jpg" alt="Veg" style="width: 100%;">--%>
                        </div>

                        <div class="item">
                            <div class="carousel-caption c1">
                                <h1>Welcome Classica Cafe</h1>
                            </div>
                            <img src="Images/pizza.jpg" alt="Non-Veg" style="width: 100%; height: 80%" />
                            <%--<img src="food3.jpg" alt="Non-Veg" style="width: 100%;">--%>
                        </div>

                        <div class="item">
                            <div class="carousel-caption c1">
                                <h1>Welcome Classica Cafe</h1>
                            </div>
                            <img src="Images/food2.jpg" alt="Veg" style="width: 100%; height: 80%" />
                            <%--<img src="img6.jpg" alt="Burger" style="width: 100%;">--%>
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

                

                <nav class="nav">
                    <div class="nav_title"></div>
                    <section class="well well__offset-1 bg-1">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9"><asp:Label Text="" runat="server" ID="lblname"></asp:Label></div>
                                <div class="col-md-1">
                                    <a href="Home.aspx">Home</a>  
                                </div>
                                <div class="col-md-1">
                                    <a href="Veg.aspx">Category</a>  
                                    <%--<asp:Label ID="Lable1" runat="server" Text="Category"></asp:Label>
                                    <asp:DropDownList ID="ddlcat" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem>Veg</asp:ListItem>
                                        <asp:ListItem>Non-Veg</asp:ListItem>
                                    </asp:DropDownList>--%>
                                    <%--<a href="Account.aspx">Category</a>--%>
                                </div>
                                <div class="col-md-1">
                                    <a href="Login.aspx">Login</a>
                                </div>
                            </div>
                        </div>
                    </section>
                </nav>
            </div>
        </header>

        <main>
            <section class="well">
                <div class="container">
                    <h2 class="tag" data-text=" Items">Our Veg Special  </h2>
                </div>
            </section>

            <section class="well">
                <div class="row">
                    <div class="col-md-4">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <a href="Product.aspx?id=1">
                                        <img src="Images/bur.jpg" width="600" height="300" />
                                        <div class="gallery_caption">
                                            <p><em>Burger</em></p>
                                        </div>
                                    </a>
                                </figure>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <a href="Product.aspx?id=1">
                                        <img src="Images/pizza.jpg" width="300" height="280" />
                                        <div class="gallery_caption">
                                            <p><em>Pizza</em></p>
                                        </div>
                                    </a>
                                </figure>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-4">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <a href="Product.aspx?id=1">
                                        <img src="Images/Pasta.jpg" width="300" height="280" />
                                        <div class="gallery_caption">
                                            <p><em>Pasta</em></p>
                                        </div>
                                    </a>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="well">
                <div class="container">
                    <h2 class="tag" data-text=" Items">Our Non-Veg Special  </h2>
                </div>
            </section>

            <section class="well">
                <div class="row">
                    <div class="col-md-4">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <a href="Product.aspx?id=2">
                                        <img src="Images/Chicken-Burger1.jpg" width="300" height="280" />
                                        <%--<img src="Images/bur.jpg" width="300" />--%>
                                        <div class="gallery_caption">
                                            <p><em>Non-Veg Burger</em></p>
                                        </div>
                                    </a>
                                </figure>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <a href="Product.aspx?id=2">
                                        <img src="Images/Chicken_Pizza.jpg" width="300" height="280" />
                                        <%--<img src="Images/pizza.jpg" width="300" height="280" />--%>
                                        <div class="gallery_caption">
                                            <p><em>Non-Veg Pizza</em></p>
                                        </div>
                                    </a>
                                </figure>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-4">
                        <div class="images">
                            <div id="zoom-in">
                                <figure>
                                    <a href="Product.aspx?id=2">
                                        <img src="Images/non-veg_Pasta.jpg" width="300" height="280" />
                                        <%--<img src="Images/Pasta.jpg" width="300" />--%>
                                        <div class="gallery_caption">
                                            <p><em>Non-Veg Pasta</em></p>
                                        </div>
                                    </a>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <footer>
                <div class="container">
                    <%--<ul class="socials">
                <li><a href="#" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-tumblr"></a></li>
                <li><a href="#" class="fa fa-google-plus"></a></li>
            </ul>--%>
                    <div class="copyright">
                        © <span id="copyright-year"></span>|
                <a href="#">Privacy Policy</a>
                    </div>
                </div>
                <div class="tm" style="color: #FF6600">Developed By : www.com</div>
            </footer>

            <section class="well well__offset-1 bg-1">
                <div class="container">
                </div>
            </section>
        </main>
    </form>
</body>
</html>
