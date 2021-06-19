v<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fries.aspx.cs" Inherits="Food_Order_System.Website.Fries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fries</title>
    <link href="Burger.css" rel="stylesheet" />
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
                    <a href="card2.aspx">
                        <img src="../Images/f11.jpg" width="300" height="300" />
                    </a>
                </div>
                <div class="content">
                    <h6>Churros</h6>
                    <p>Try a fresh spin on doughnuts by piping them Spanish-style and serving with a thick and indulgent homemade dark chocolate sauce</p>
                    <span style="color: white">5.0</span><span style="color: yellow">&starf;&starf;&starf;&starf;&starf;</span><span style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.100/-</span>

                </div>
            </div>

            <div class="box1">
                <div class="imgbx1">
                    <a href="card2.aspx">
                        <img src="../Images/Short-Rib-Poutine_EXPS_SDDJ17_198459_B08_10_5b-3.jpg" width="300" height="300" />
                    </a>
                </div>
                <div class="content1">
                    <h6>Short Rib Poutine</h6>
                    <p>This dish combines the hearty, spicy flavors of my beloved slow-cooker short ribs with my all-time favorite comfort food: fries and gravy.</p>
                    <span style="color: white">5.0</span><span style="color: yellow">&starf;&starf;&starf;&starf;&starf;</span><span style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.200/-</span>
                </div>
            </div>

            <div class="box2">
                <div class="imgbx2">
                    <a href="card2.aspx">
                        <img src="../Images/Loaded-Waffle-Fries_exps26017_BOS2469759C02_08_5b_RMS.jpg" width="300" height="300" />
                    </a>
                </div>
                <div class="content2">
                    <h6>Loaded Waffle Fries</h6>
                    <p>Make any dinner fun with my Loaded Waffle Fries, topped with a savory blend of cheese, scallions and bacon.</p>
                    <span style="color: white">4.0</span><span style="color: yellow">&starf;&starf;&starf;&starf;</span><span style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.300/-</span>
                </div>
            </div>

            <div class="box3">
                <div class="imgbx3">
                    <a href="card2.aspx">
                        <img src="../Images/exps20478_C153811B09_15_4b.jpg" width="300" height="300" /></a>
                </div>
                <div class="content3">
                    <h6>Baked Chops and Cottage Fries</h6>
                    <p>Convenience items like frozen vegetables, cottage fries and a jar of cheese sauce make it a snap to assemble this comforting pork chop supper. It's a simple one-dish meal. —Gregg Voss, Emerson, Nebraska</p>
                    <span style="color: white">5.0</span><span style="color: yellow">&starf;&starf;&starf;&starf;&starf;</span><span style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.400/-</span>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
