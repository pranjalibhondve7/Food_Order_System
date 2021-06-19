using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System.Website
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from Customers_Reg where Email='" + txtuser.Text + "' and Password='" + txtpass.Text + "'";
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('Login successfully..')</script>");
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login unsuccessfully..')</script>");
            }
            con.Close();
        }
    }
}