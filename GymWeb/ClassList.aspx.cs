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
    public partial class ClassList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ddlTime_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("update WorkoutClass set CurEnroll= CurEnroll + 1 where ClassId=10000", connection);
                try
                {
                    // Open Connection             
                    connection.Open();


                    
                    SqlDataReader dr = cmd.ExecuteReader();


                }
                catch (Exception ex)
                {

                }

                connection.Close();


            }

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Class Resgistration successful')", true);
        }
    }
}