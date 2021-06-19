using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Order_System
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblname.Text = "Welcome " + Session["name"].ToString();
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (ddlcat.Text == "Veg")
        //    {
        //        Response.Redirect("Veg.aspx");
        //    }
        //    else
        //    {
        //        Response.Redirect("Non-Veg.aspx");
        //    }
        //}
    }
}