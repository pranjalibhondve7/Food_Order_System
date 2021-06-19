using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Razorpay.Api;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlDataAdapter adapt;
        DataTable dt;
        public string orderId;
        public string amount;
        public string contact;
        public string name;
        public string product;
        public string email;
        //decimal total;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            dt = new DataTable();
            if (!IsPostBack)
            {
                totalamount();
                //ShowData();                
            }
           
            //paybuttom();
        }

        //protected void paybuttom()
        //{
        //    amount = (Convert.ToDecimal("tprice") * 100).ToString();
        //    contact = Session["mob"].ToString();
        //    name = Session["name"].ToString();
        //    //product =Session["Product"].ToString();
        //    email = Session["email"].ToString();

        //    Dictionary<string, object> input = new Dictionary<string, object>();
        //    input.Add("amount", amount);
        //    input.Add("currency", "INR");
        //    input.Add("payment_capture", 1);

        //    string key = "rzp_test_IUqqR0HY4t8VSj";
        //    string secret = "9XTM1mMkmFhPAW7GTaTmGPSO";

        //    RazorpayClient client = new RazorpayClient(key, secret);

        //    Razorpay.Api.Order order = client.Order.Create(input);
        //    orderId = order["id"].ToString();
        //}

        protected void ShowData()
        {
            string odt = (Session["email"].ToString());
            txtCustomerId.Text = Session["uid"].ToString();
            txtname.Text= Session["name"].ToString();
            txtemail.Text = Session["email"].ToString();
            txtmob.Text = Session["mob"].ToString();              
            con.Close();         
            totalamount();
            con.Close();
        }

        protected void totalamount()
        {
            dt = new DataTable();
            string odt = (Session["Email"].ToString());
            con.Open();
            // total = "Select sum(Total_Price) as tprice from Order_Details where Email='" + odt + "'";
            //total = Convert.ToDecimal(query);
            adapt = new SqlDataAdapter("Select sum(Total_Price) as tprice from Order_Details where Email='" + odt + "'", con);
            adapt.Fill(dt);
            lblamt.Text = dt.Rows[0]["tprice"].ToString();
            txtamt.Text = dt.Rows[0]["tprice"].ToString();
            con.Close();
        }
        protected void btnpayonline_Click(object sender, EventArgs e)
        {
            //paybuttom();
            Response.Redirect("Payout.aspx");
        }

        protected void btnpayoffline_Click(object sender, EventArgs e)
        {            
            string idd = Session["email"].ToString();           
            dt = new DataTable();
            con.Open();
            //lblamtt.Text = dt.Rows[0]["tprice"].ToString();
            cmd = new SqlCommand("Update  Order_Details set Payment_Mode=@cash  where Email='" + idd + "'", con);
            // cmd.CommandText = "Insert into Order_Details(Payment_Mode) values (@cash) where Email='"+ idd + "' ";
            cmd.Parameters.AddWithValue("@cash", "cash");
            cmd.ExecuteNonQuery();
            con.Close();
            MultiView1.ActiveViewIndex = 1;
            Response.Redirect("Thanks.aspx");
        }

        protected void rdoonine_CheckedChanged(object sender, EventArgs e)
        {
            
            ShowData();
            MultiView1.ActiveViewIndex = 0;
            con.Close();
        }

        protected void rdooffline_CheckedChanged(object sender, EventArgs e)
        {
            string odt = (Session["Email"].ToString());            
            adapt = new SqlDataAdapter("Select sum(Total_Price) as tprice from Order_Details where Email='" + odt + "'", con);
            adapt.Fill(dt);
            lblamtt.Text = dt.Rows[0]["tprice"].ToString();
           // lblamtt.Text = dt.Rows[0]["tprice"].ToString();
            MultiView1.ActiveViewIndex = 1;
            con.Close();
        }
    }
}