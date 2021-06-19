<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="B_Card2.aspx.cs" Inherits="Food_Order_System.Website.B_Card2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous" />
       
    <link href="Card1.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
            <div class="card">
                <div class="row-form-box">
                    <div class="bg-light p-3 rounded">

                       <img src="../Images/b11.jpg"class="img-fluid" />
                    </div>
                </div>
                <div class="content">
                    <h2>Veg Burger</h2>
                    <p class="small mb-21">
                        <i class="fa fa-star text-warning mr-2"></i>
                        <i class="fa fa-star text-warning mr-2"></i>
                        <i class="fa fa-star text-warning mr-2"></i>
                        <i class="fa fa-star text-warning mr-2"></i>
                        <i class="fa fa-star text-warning mr-2"></i><span class="font-weight-bold text-dark">(16 ratings)</span>
                    </p>
                    <p class="small mb-2">
                        <i class="fa fa-inr ml-3"></i>340  -  <i class="fa fa-inr ml-3"></i>550
                    </p>
                    <p>
                        Cooking in a pan: Peel and chop potatoes, carrots in small cubes.
                        Chop the beans to small pieces. Place the chopped veggies and green peas in ...
                    </p>
                    <p>Bun</p>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem> Select a Bun</asp:ListItem>
                        <asp:ListItem> No of Bun</asp:ListItem>
                        <asp:ListItem> Size of Bun</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <p>Sauce</p>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem> Select a Sauce</asp:ListItem>
                        <asp:ListItem> Tomato Sauce</asp:ListItem>
                        <asp:ListItem> Chilli Sauce</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="test" />Add Fries and Coke
                     <asp:CheckBox ID="CheckBox2" runat="server" CssClass="test" />Extra Cheese
                   <asp:CheckBox ID="CheckBox3" runat="server" CssClass="test" />Double Patty
                    <br />
                    <br />
                    <p>Quantity</p>

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="s1" Width="400px" Height="30px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="ADD TO CART" CssClass="s1" Width="150px" Height="30px" Font-Size="X-Small" ForeColor="black" Font-Bold="true" BackColor="#ffcc00" />
                    <br />
                    <br />
                    <p>Categories : <span>Burger</span></p>
                    <p>Tags: <span>Food,Foodies,Bun,Fish</span></p>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Description" CssClass="btn btn-primary" Width="150px" />
                    <asp:Button ID="Button3" runat="server" Text="Additional Information" CssClass="btn btn-danger" />
                    <asp:Button ID="Button4" runat="server" Text="Reviews" CssClass="btn btn-success" Width="150px" />
                </div>

            </div>


        </div>
    </form>
</body>
</html>
