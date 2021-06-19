using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System
{
    public partial class View : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        DataTable dt;
        SqlDataAdapter adapt;
        //int qty;
        //string odti;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();           
            cmd.Connection = con;
            dt = new DataTable();           
            string dts = (Session["Menu_Id"].ToString());
            adapt = new SqlDataAdapter("Select * from [dbo].[Menu_Item] where Menu_Id='" + dts + "'", con);
            adapt.Fill(dt);
            lblname.Text = dt.Rows[0]["Menu_Items"].ToString();
            lblprice.Text = dt.Rows[0]["Price"].ToString();            
            Image1.ImageUrl = dt.Rows[0]["image"].ToString();
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {


            string odt = (Session["Email"].ToString());

            int Qty = Convert.ToInt32(txtqty.Text);
            decimal Price = Convert.ToDecimal(lblprice.Text);
            //decimal Tax = Convert.ToDecimal(comboBoxtax.Text);
            decimal TotalAmount = (Qty * Price);          
            string strname = Image1.ImageUrl.ToString();                     
            //Image1.ImageUrl.(Server.MapPath("~/upload/") + strname);
            cmd.CommandText = "Insert into [dbo].[Order_Details](Email,Menu_Items,Item_Price,Quantity,Total_Price,Image) values (@Email,@IName,@price,@qty,@totprice,@image)";
            cmd.Parameters.AddWithValue("@Email", odt);
            cmd.Parameters.AddWithValue("@IName", lblname.Text);
            cmd.Parameters.AddWithValue("@price", lblprice.Text);
            cmd.Parameters.AddWithValue("@qty", txtqty.Text);
            cmd.Parameters.AddWithValue("@totprice", TotalAmount);
            cmd.Parameters.AddWithValue("@image", strname);
            con.Open();
                //int index = cmd.ExecuteNonQuery();
                if (cmd.ExecuteNonQuery() > 0)
                {
                    Response.Write("<script>alert(' Successful..!!')</script>");
                    Response.Redirect("MyCart.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Failed..!!')</script>");
                }
                  con.Close();              
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            
        }       
    }
}