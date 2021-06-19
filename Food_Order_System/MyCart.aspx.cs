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
    public partial class MyCart : System.Web.UI.Page
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
            dt = new DataTable();
            if (!IsPostBack)
            {
                ShowData();
            }
        }
        protected void ShowData()
        {
            string odt = (Session["Email"].ToString());

            dt = new DataTable();
            con = new SqlConnection(cnfg);
            con.Open();
            adapt = new SqlDataAdapter("Select * from Order_Details where Email='" + odt + "'", con);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            lbl.Text = GridView1.Rows.Count.ToString();
            if (GridView1.Rows.Count == 0)
            {
                btnchckout.Visible = false;
                btncontinue.Visible = false;
            }
            else
            {
                btnchckout.Visible = true;
                btncontinue.Visible = true;
            }
            con.Close();
        }
        
        protected void btnchckout_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            GridView1.EditIndex = e.NewEditIndex;
            ShowData();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            lbl.Text = GridView1.Rows.Count.ToString();
        }
        protected void btndelete_Command(object sender, CommandEventArgs e)
        {
            string odt = (Session["Email"].ToString());
            int id = Convert.ToInt32(e.CommandArgument);
            cmd.CommandText = "Delete Order_Details where Order_Id=" + id + "";
            con.Open();
            int index = cmd.ExecuteNonQuery();
            if (index >= 0)
            {
                Response.Write("<script>alert(' Deleted  Successfully.....')</script>");
            }
            else
            {
                Response.Write("<script>alert('Details Not Deleted .....')</script>");
            }
            con.Close();
            ShowData();
        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int oidd = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            decimal amount = 0;
            int qty = 0;
            decimal rowTotal = 0;
            //decimal subTotal = 0;
            decimal tpricee = 0;
            //decimal total = 0; ;

            TextBox txtQuantity = GridView1.Rows[e.RowIndex].FindControl("txtq") as TextBox;
            qty = Convert.ToInt32(txtQuantity.Text);
            Label lbl = GridView1.Rows[e.RowIndex].FindControl("lblprice") as Label;                
             amount = Convert.ToDecimal(lbl.Text);
             rowTotal = qty * amount;               
             //subTotal += rowTotal;                           
            tpricee = rowTotal;    
            adapt = new SqlDataAdapter("Update Order_Details set Quantity='" + qty + "',Total_Price= '" + tpricee + "' where Order_Id='" + oidd + "' ", con);
            adapt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
           
            string odt = (Session["Email"].ToString());
            adapt = new SqlDataAdapter("SELECT * FROM Order_Details where Email = '"+ odt + "'",con);
            adapt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
            GridView1.EditIndex = -1;
           //Call ShowData method for displaying updated data  
           ShowData();
        }      
        protected void btncontinue_Click(object sender, EventArgs e)
        {


        }      
    }
}