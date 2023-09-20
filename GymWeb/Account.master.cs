using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWeb
{
    public partial class Account1 : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                HttpCookie emailCookie = Request.Cookies["email"];


                if (emailCookie != null)
                {
                    SqlCommand cmd = new SqlCommand("SELECT First_Name, Last_Name FROM Customer WHERE email=" + "'" + emailCookie.Value + "'", con);

                    cmd.Parameters.AddWithValue("@email", emailCookie.Value);

                    try
                    {
                        con.Open();

                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                lblDisplayName.Text = dr[0].ToString() + " " + dr[1].ToString();
                            }
                        }
                        else
                        {
                            lblDisplayName.Text = "User";
                        }

                        //lblDisplayName.Text = da.Tables[0].Rows[0]["First_Name"].ToString();

                        con.Close();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.ToString());
                    }
                } else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('You must create an account first.');" +
                        "window.location = 'LoginPage.aspx';", true);
                }
            }

        }
    }
}