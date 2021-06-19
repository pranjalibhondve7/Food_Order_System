using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Razorpay.Api;
using System.Web.UI.WebControls;

namespace Food_Order_System
{
    public partial class RazorpayCallBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string paymentId = Request.Form["razorpay_payment_id"];
                string orderId = Request.Form["razorpay_order_id"];
                string signature = Request.Form["razorpay_signature"];

                string key = "rzp_test_IUqqR0HY4t8VSj";
                string secret = "9XTM1mMkmFhPAW7GTaTmGPSO";

                RazorpayClient client = new RazorpayClient(key, secret);

                Dictionary<string, string> attributes = new Dictionary<string, string>();

                attributes.Add("razorpay_payment_id", paymentId);
                attributes.Add("razorpay_order_id", orderId);
                attributes.Add("razorpay_signature", signature);

                Utils.verifyPaymentSignature(attributes);
                pTxnId.InnerText = paymentId;
                pOrderId.InnerText = orderId;
                h1message.InnerText = "Transaction Successfull";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                //h1message.InnerText = "Transaction Unsuccessfull";
            }
        }
    }
    
}