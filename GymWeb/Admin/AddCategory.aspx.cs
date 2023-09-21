using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWeb.Admin
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {                
                // Insert into "Category" Table
                SqlCommand cmd = new SqlCommand("insert into Category(Title) " +
                "values(@Title);", con);
                cmd.Parameters.AddWithValue("@Title", txtCategoryTitle.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
        }
    }
}