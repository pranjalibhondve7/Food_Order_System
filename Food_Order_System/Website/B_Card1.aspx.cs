using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System.Website
{
    public partial class B_Card1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            con =new  SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            dt = new DataTable();
            dt = (DataTable)Session["buyitem"];
            if (dt != null)
            {
                Label2.Text = dt.Rows.Count.ToString();

            }
            else
            {
                Label2.Text = "0";
            }
            if (!IsPostBack)
            {
                using ( con = new SqlConnection(cnfg))
                {
                     cmd = new SqlCommand("select * from Menu_Item", con);
                    //cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    DataList1.DataSource = cmd.ExecuteReader();
                    DataList1.DataBind();

                }
            }
        }
        
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            { 
             DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList"));
             Response.Redirect("Card_Details.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString());
            }
        }
        //protected void addtocard_Command(object sender, CommandEventArgs e)
        //{
        //    //DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList"));
        //    //Response.Redirect("Addtocard.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString());
        //}

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void addtocard_Click(object sender, EventArgs e)
        {
            //cmd.CommandText = "Insert Into Temp_Card()";
            
        }
    }
}