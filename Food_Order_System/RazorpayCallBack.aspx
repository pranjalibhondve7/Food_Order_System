<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RazorpayCallBack.aspx.cs" Inherits="Food_Order_System.RazorpayCallBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <h1 runat="server" id="h1message"></h1>
                <p runat="server" id="pTxnId"></p>
                <p runat="server" id="pOrderId"></p>
                <p>Click Here to go Home</p>
                <p><a class="btn btn-primary btn-lg" href="Payment.aspx" role="button">Home</a></p>

            </div>

        </div>
    </form>
</body>
</html>
