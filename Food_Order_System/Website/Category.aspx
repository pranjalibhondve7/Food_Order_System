<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Food_Order_System.Website.Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Category</title>
    <link href="Category.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div>
          
            <h1 class="tag" data-text=" Items">Select Your Food Category</h1>
        </div>
        <div class="center">
           
            <div class="outer button">
                
                <button ><h1><a href="Burger.aspx">Veg-Food</a></h1></button>
                     <span></span>
            </div>
            <div class="outer1 button">
               
                     <button><h1><a href="Non_Veg.aspx">NonVeg-Food</a></h1></button>
                  <span></span>
            </div>

        </div>
    </form>
</body>
</html>
