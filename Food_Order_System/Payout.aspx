<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payout.aspx.cs" Inherits="Food_Order_System.Payout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form action="RazorpayCallBack.aspx" method="post">
        <script
            src="https://checkout.razorpay.com/v1/checkout.js"
            data-key="rzp_test_IUqqR0HY4t8VSj"
            data-amount="<%=amount%>"
            data-name="<%=name%>"
            <%--data-description="<%=product%>"--%>
            data-order_id="<%=orderId%>"
            <%--data-image="https://razorpay.com/favicon.png"--%>
            data-buttontext="Pay with Razorpay"
            data-prefill.name="<%=name%>"
            data-prefill.email="<%=email%>"
            data-prefill.contact="<%=contact%>"
            data-theme.color="#F37254">
        </script>
    </form>
    <%--<form id="form1" runat="server">
        <div>

        </div>
    </form>--%>
</body>
</html>
<%--9XTM1mMkmFhPAW7GTaTmGPSO
Response.Write("<script>alert('" + ex.Message + "')</script>");
key = "rzp_test_IUqqR0HY4t8VSj";--%>