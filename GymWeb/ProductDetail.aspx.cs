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
    public partial class ProductDetailaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ProductId = int.Parse(Request.QueryString["Productid"]); 

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                connection.Open();

                string query = "SELECT * FROM Product WHERE ProductID = @ProductID";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@ProductID", ProductId);

                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // Retrieve data from the reader
                    string productName = reader["Name"].ToString();
                    string productPrice = reader["Price"].ToString();
                    string productDescription = reader["Description"].ToString();
                    string productImageUrl = reader["ImageUrl"].ToString();
                    

                    productImage.ImageUrl = productImageUrl.ToString();

                    lblName.Text = productName;
                    lblPrice.Text = "RM " + productPrice;
                    lblDescription.Text = productDescription;

                }

                reader.Close();
            }

            

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
                Response.Redirect("ThankYou.aspx");
        }
    }
}