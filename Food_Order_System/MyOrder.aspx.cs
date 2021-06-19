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
    public partial class MyOrder : System.Web.UI.Page
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
            cmd.Connection = con;
            //dt = new DataTable();

            string odt = (Session["Email"].ToString());

            dt = new DataTable();
           // con = new SqlConnection(cnfg);
            
            adapt = new SqlDataAdapter("Select * from Order_Details where Email='" + odt + "'", con);
            con.Open();
            adapt.Fill(dt);            
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
            lbl.Text = GridView1.Rows.Count.ToString();
        }
    }
}