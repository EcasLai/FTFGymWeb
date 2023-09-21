using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT count(1) FROM Customer WHERE email=@email AND password=@password", con);

                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);

                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                if (count == 1)
                {
                    HttpCookie emailCookie = new HttpCookie("email");
                    DateTime now = DateTime.Now;

                    // Set the cookie value.
                    emailCookie.Value = txtEmail.Text;
                    // Set the cookie expiration date.
                    emailCookie.Expires = now.AddDays(30);

                    // Add the cookie.
                    Response.Cookies.Add(emailCookie);
                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect User Credentials')", true);
                }
            }
        }
    }
}