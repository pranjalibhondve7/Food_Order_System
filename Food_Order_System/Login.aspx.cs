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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        //SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            lblmsg.Text = "";
        }
        
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from Customers_Reg where Email='" + txtuser.Text + "' and Password='" + txtpass.Text + "'";
            //same here
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["email"] = dt.Rows[0]["Email"].ToString();
                Session["name"] = dt.Rows[0]["Name"].ToString();
                Session["uid"] = dt.Rows[0]["Customer_Id"].ToString();
                Session["mob"] = dt.Rows[0]["Mob_No"].ToString();
                //lblmsg.Text = "Login Successfully....";
                Response.Write("<script>alert('Login successfully..')</script>");
                Response.Redirect("Home.aspx");

            }
            else
            {
                Response.Write("<script>alert('Login unsuccessfully..')</script>");
                //Response.Write("<script>alert('Login unsuccessfully..')</script>");
                //lblmsg.Text = "Invalid username or password";
            }
            //con.Open();
            //dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    Response.Write("<script>alert('Login successfully..')</script>");
            //    Response.Redirect("Home.aspx");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Login unsuccessfully..')</script>");
            //}
            //con.Close();
        }
    }
}