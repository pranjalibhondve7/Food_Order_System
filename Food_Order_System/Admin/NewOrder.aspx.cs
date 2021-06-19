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
    public partial class NewOrder : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        DataTable dt;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            if (!IsPostBack)
            {
                BindData();
            }
            lbll.Text = GridView1.Rows.Count.ToString();
        }
        protected void BindData()
        {
            dt = new DataTable();
            con = new SqlConnection(cnfg);
            con.Open();
            da = new SqlDataAdapter("Select * from Order_Details", con);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}