using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System.Admin
{
    public partial class Admin_Login : System.Web.UI.Page
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
            cmd.CommandText = "Select * from Admin_Login where Email='"+ txtemail.Text + "' and Password='"+ txtpass.Text + "' ";
            //same here

            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('Admin login successfully.........')</script>");
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Details.......')</script>");
            }
            con.Close();
        }
    }
}
