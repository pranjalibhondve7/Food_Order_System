using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Razorpay.Api;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Food_Order_System
{
    public partial class Payout : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlDataAdapter adapt;
        DataTable dt;
        public string orderId;
        public decimal amount;
        public string contact;
        public string name;
        public string product;
        public string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            dt = new DataTable();

            string odt = (Session["email"].ToString());
           // con.Open();
           
            adapt = new SqlDataAdapter("Select sum(Total_Price) as tprice from Order_Details where Email='" + odt + "'", con);
            adapt.Fill(dt);
            string total= dt.Rows[0]["tprice"].ToString();            
            amount = Convert.ToDecimal(total)*100;
            contact = Session["mob"].ToString();
            name = Session["name"].ToString();
            //product =Session["Product"].ToString();
            email = Session["email"].ToString();

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", amount);
            input.Add("currency", "INR");
            input.Add("payment_capture", 1);

            string key = "rzp_test_IUqqR0HY4t8VSj";
            string secret = "9XTM1mMkmFhPAW7GTaTmGPSO";

            RazorpayClient client = new RazorpayClient(key, secret);

            Razorpay.Api.Order order = client.Order.Create(input);
            orderId = order["id"].ToString();
            con.Close();
        }
    }
}