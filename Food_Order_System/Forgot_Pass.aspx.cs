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
    public partial class Forgot_Pass : System.Web.UI.Page
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
            lblmsg.Text = "";
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from Customers_Reg where Email='" + txtuser.Text + "' and Mob_No='" + txtmob.Text + "'";
            //same here

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
                
            {
                lblmsg.Text = "Password =" + dt.Rows[0]["Password"].ToString();
            }
            else
            {
                lblmsg.Text = "Invalid name or mobile";
            }
        }
    }
}