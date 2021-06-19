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
    public partial class Burger : System.Web.UI.Page
    {
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    //using (SqlConnection con = new SqlConnection(cnfg))
            //    //{
            //    //    SqlCommand cmd = new SqlCommand("select * from Menu_Item", con);
            //    //    //  cmd.CommandType = CommandType.StoredProcedure;
            //    //    con.Open();
            //    //    DataList1.DataSource = cmd.ExecuteReader();
            //    //    DataList1.DataBind();

            //    //}
            //}
        }
    }
}