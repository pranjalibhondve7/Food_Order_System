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
    public partial class Products : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                string idd = Request.QueryString["id"].ToString();
                if (idd == "1")
                {
                    adapt = new SqlDataAdapter("Select * from [dbo].[Menu_Item] where Menu_Category_Id = '" + idd + "'", con);
                    adapt.Fill(dt);
                    
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }
                else
                {
                    adapt = new SqlDataAdapter("Select * from [dbo].[Menu_Item] where Menu_Category_Id = '" + idd + "'", con);
                    adapt.Fill(dt);
                    
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["Menu_Id"] = e.CommandArgument.ToString();
            Response.Redirect("View.aspx");
        }
    }   
}