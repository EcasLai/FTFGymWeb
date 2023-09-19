using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWeb
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public int A()
        {
            string stmt = "SELECT COUNT(*) FROM dbo.Product";
            int count = 0;

            using (SqlConnection thisConnection = new SqlConnection("Data Source=FTFGymEntities1"))
            {
                using (SqlCommand cmdCount = new SqlCommand(stmt, thisConnection))
                {
                    thisConnection.Open();
                    count = (int)cmdCount.ExecuteScalar();
                }
            }
            return count;
        }

        public void Unnamed_InsertItem()
        {
            Models.Product item = new Models.Product();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here
                Models.FTFGymEntities1 _pd = new Models.FTFGymEntities1();

                item.ProductId = A();

                _pd.Products.Add(item);
                _pd.SaveChanges();
                Response.Redirect("/ViewProduct.aspx");
            }
        }
    }
}