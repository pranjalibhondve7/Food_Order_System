using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Web;
using System.Collections.Specialized;
using System.IO;
using System.Net.Mail;
using System.Data;

namespace Food_Order_System
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlDataAdapter da;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            lblmsg.Text = "";
        }

        public void SendEmail()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.mycontrolbox.in";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new System.Net.NetworkCredential("no_reply@mycontrolbox.in", "tk%zazU4");
            smtp.EnableSsl = false;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello " + txtname.Text + "  Thanks for Register ";
            msg.Body = "Hi, Thanks For Your Registration at our site , We will Provide You The Latest Update. Thanks";
            string toaddress = txtemail.Text;
            msg.To.Add(toaddress);
            string fromaddress = "<no_reply@mycontrolbox.in>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                // msg.To.Add(new MailAddress("txtEmail.Text"));
                smtp.Send(msg);
                lblmail.Text = "Email Send Successfully";
                txtname.Text = "";
                txtemail.Text = "";
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                //throw;
            }
        }
        
            public void SendSMS()
            {                
                    string Username = "SAURABH";
                    string APIKey = "B3AF5-7737D";
                    string SenderName = "PROREG";
                    string Number = txtmoblie.Text;
                    string Route = "TRANS";
                    string Format = "JSON";
                    string TemplateID = "1707161744326123203";
                    string Message = "Congratulations, Dear User Your Account Has Been Created Successfully.";

                    string URL = "http://sms.probuztech.com/sms-panel/api/http/index.php?username=" + Username + "&apikey=" + APIKey + "&apirequest=Text&sender=" + SenderName + "&mobile=" + Number + "&message=" + Message + "&route=" + Route + "&TemplateID=" + TemplateID + "&format=" + Format + "";

                    HttpWebRequest req = (HttpWebRequest)WebRequest.Create(URL);
                    HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
                    StreamReader sr = new StreamReader(resp.GetResponseStream());
                 try
                 {
                    string results = sr.ReadToEnd();
                    lblsms.Text = "SMS Sent to " + Number + " Successfully";
                    sr.Close();
                    
                 }
                catch(Exception ex)
                 {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                 }
            }

            void clear()
            {
                txtname.Text = string.Empty; txtemail.Text = string.Empty; txtmoblie.Text = string.Empty;
                txtuser.Text = string.Empty; txtpass.Text = string.Empty; txtaddress.Text = string.Empty;
                txtname.Focus();
            }

        protected void btnregister_Click(object sender, EventArgs e)
        {
             da = new SqlDataAdapter("select * from Customers_Reg where Email = '" + txtemail.Text + "'", con);
            try
            {
                con.Open();
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Email Already Exists, Try another')</script>");
                }
                else
                {
                    //da = new SqlDataAdapter("Insert into Customers_Reg(Name,Email,Mob_No,Username,Password) values (@Name,@Email,@Mob_no,@Username,@Password", con);
                    cmd.CommandText = "Insert into Customers_Reg(Name,Email,Mob_No,Address,Pincode,Username,Password) values (@Name,@Email,@Mob_no,@Address,@Pin,@Username,@Password)";
                    cmd.Parameters.AddWithValue("@Name", txtname.Text);
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@Mob_no", txtmoblie.Text);
                    cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
                    cmd.Parameters.AddWithValue("@Pin", txtpin.Text);
                    cmd.Parameters.AddWithValue("@Username", txtuser.Text);
                    cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        Response.Write("<script>alert(' Account Created Successfuly..!!')</script>");
                        //Session["email"] = dt.Rows[0]["Email"].ToString();
                        //Session["name"] = dt.Rows[0]["Name"].ToString();
                        //Session["mob"] = dt.Rows[0]["Mob_No"].ToString();
                        //Session["custumerID"] = dt.Rows[0]["Customer_Id"].ToString();
                    }
                   
                    else
                    {
                        Response.Write("<script>alert(' Failed..!!')</script>");
                    }
                    //Session["mob"] = dt.Rows[0]["Mob_No"].ToString();
                    lblmsg.Text = "Registration Successfully";
                    if (lblmsg.Text == "Registration Successfully")
                    {
                        SendEmail();
                        SendSMS();
                        txtname.Text = "";
                        txtemail.Text = "";
                        txtmoblie.Text = "";
                        txtuser.Text = "";
                        txtpass.Text = "";
                    }
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                clear();
                con.Close();
            }


            //cmd.CommandText = "Insert into Customers_Reg(Name,Email,Mob_No,Username,Password) values (@Name,@Email,@Mob_no,@Username,@Password)";
            //con.Open();
            //cmd.Parameters.AddWithValue("@Name", txtname.Text);
            //cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            //cmd.Parameters.AddWithValue("@Mob_no", txtmoblie.Text);
            //cmd.Parameters.AddWithValue("@Username", txtuser.Text);
            //cmd.Parameters.AddWithValue("@Password", txtpass.Text);
            //if (cmd.ExecuteNonQuery() > 0)
            //{
            //    Response.Write("<script>alert(' Account Created Successfuly..!!')</script>");
            //}
            //else
            //{
            //    Response.Write("<script>alert(' Failed..!!')</script>");
            //}
            //lblmsg.Text = "Registration Successfully";
            //if (lblmsg.Text == "Registration Successfully")
            //{
            //    SendEmail();
            //    SendSMS();
            //    txtname.Text = "";
            //    txtemail.Text = "";
            //    txtmoblie.Text = "";
            //    txtuser.Text = "";
            //    txtpass.Text = "";
            //}




        }
    }
}
           
            





