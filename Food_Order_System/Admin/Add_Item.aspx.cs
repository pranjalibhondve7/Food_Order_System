using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System.Admin
{
    public partial class Add_Item : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            if (!IsPostBack)
            {
                //LoadData();
                dropdown();
            }
        }
        protected void dropdown()
        {
            SqlConnection con = new SqlConnection(cnfg);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Category_Name,Menu_Category_Id  from Menu_Category", con);

            //select Category_Name,Menu_Category_Id from Menu_Category
            //cmd.CommandType = CommandType.Text;
            ddlcat.DataSource = cmd.ExecuteReader();
            ddlcat.DataTextField = "Category_Name";
            ddlcat.DataValueField = "Menu_Category_Id";
            ddlcat.DataBind();
            ddlcat.Items.Insert(0, new ListItem("--Select--", "0"));
            con.Close();
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg"|| ext == ".jpeg"|| ext == ".png")
            {

                if (FileUpload1.FileName != null)
                {
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" + FileUpload1.FileName));
                    imgUser.ImageUrl = "~/Images/" + FileUpload1.FileName;
                }
            }

            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "~/Images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);

                SqlDataAdapter de = new SqlDataAdapter("select Menu_Items from Menu_Item where Menu_Items='" + txtname.Text + "'", con);
                DataTable dt = new DataTable();
                de.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Response.Write("<script>alert('Already data exits...!')</script>");
                }
                else
                {
                    con.Open();
                    cmd.CommandText = "Insert Into  Menu_Item(Menu_Category_Id,Menu_Items,Price,Discount,Image)values('" + ddlcat.Text + "','" + txtname.Text + "','" + txtrate.Text + "','" + txtdis.Text + "','" + filepath + "') ";

                    int index = cmd.ExecuteNonQuery();
                    if (index > 0)
                    {
                        Response.Write("<script>alert('Insert Data Successfully..........')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Insert Data Failed......')</script>");
                    }
                    con.Close();
                }
            }
        }
    }
}

