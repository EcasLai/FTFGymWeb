using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWeb
{
    public partial class AddTrainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                DateTime dateTimeVariable = DateTime.Now;
                string format = "yyyy-MM-dd HH:mm:ss";    // modify the format depending upon input required in the column in database 

                SqlCommand cmd = new SqlCommand("insert into Trainer(First_Name,Last_Name,Email,Country_Calling_Code,Phone_Number,Joined_Date) " +
                    "values(@First_Name, @Last_Name, @Email, @Country_Calling_Code, @Phone_Number, @Joined_Date);", con);
                cmd.Parameters.AddWithValue("@First_Name", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@Last_Name", txtLastName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Country_Calling_Code", ddlCountryCode.SelectedValue);
                cmd.Parameters.AddWithValue("@Phone_Number", txtPhoneNumber.Text);
                cmd.Parameters.AddWithValue("@Joined_Date", dateTimeVariable.ToString(format));
                

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }           
        }
    }
}