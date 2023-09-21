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
    public partial class Account : System.Web.UI.Page
    {
        String userId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                HttpCookie emailCookie = Request.Cookies["email"];


                if (emailCookie != null)
                {
                    SqlCommand cmd = new SqlCommand("SELECT CustomerId, First_Name, Last_Name, Email, Phone_Number FROM Customer WHERE email=" + "'" + emailCookie.Value + "'", con);

                    try
                    {
                        con.Open();

                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                userId = dr[0].ToString();
                                txtFirstName.Text = dr[1].ToString();
                                txtLastName.Text = dr[2].ToString();
                                txtEmail.Text = dr[3].ToString();
                                txtPhoneNumber.Text = dr[4].ToString();
                            }
                        }
                        else
                        {
                        }

                        con.Close();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.ToString());
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('You must create an account first.');" +
                        "window.location = 'LoginPage.aspx';", true);
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmd2 = new SqlCommand("update [Customer] set First_Name = @First_Name, Last_Name = @Last_Name, Email = @Email, Country_Calling_Code = @Country_Calling_Code, Phone_Number = @Phone_Number where CustomerId = '" + userId + "';", con2);
                cmd2.Parameters.AddWithValue("@First_Name", txtFirstName.Text);
                cmd2.Parameters.AddWithValue("@Last_Name", txtLastName.Text);
                cmd2.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd2.Parameters.AddWithValue("@Country_Calling_Code", ddlCountryCode.SelectedValue);
                cmd2.Parameters.AddWithValue("@Phone_Number", txtPhoneNumber.Text);

                try
                {
                    con2.Open();
                    cmd2.ExecuteNonQuery();
                    con2.Close();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Information Edited Successfully!')", true);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.ToString());
                }
            }
        }
    }
}