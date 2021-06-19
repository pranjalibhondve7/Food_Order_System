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
    public partial class Viewmore : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        DataTable dt;
        SqlDataAdapter adapt;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            //cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con; 
            dt = new DataTable();
            //dt = Convert.ToInt32.Session["Menu_Id"].ToString();
            string dts = (Session["Menu_Id"].ToString());
            adapt = new SqlDataAdapter("Select * from [dbo].[Menu_Item] where Menu_Id='"+ dts + "'",con);
            adapt.Fill(dt);
            lblname.Text = dt.Rows[0]["Menu_Items"].ToString();
            lblprice.Text = dt.Rows[0]["Price"].ToString();
            //lbldetail.Text = dt.Rows[0]["detail"].ToString();
           
            Image1.ImageUrl = dt.Rows[0]["image"].ToString();

        }

    }
}