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
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                DateTime dateTimeVariable = DateTime.Now;
                string format = "yyyy-MM-dd HH:mm:ss";    // modify the format depending upon input required in the column in database 

                SqlCommand cmd = new SqlCommand("insert into Customer(Email,Password,Joined_Date) " +
                    "values(@Email, @Password, @Joined_Date);", con);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@Joined_Date", dateTimeVariable.ToString(format));


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Created Successfully!')", true);
                Response.Redirect("Homepage.aspx");
            }
        }
    }
}