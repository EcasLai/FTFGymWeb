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

        

        public void Unnamed_InsertItem()
        {
            DropDownList intInputDropDown = FormViewAddProduct.FindControl("ddlCategory") as DropDownList;

            string ddlText = intInputDropDown.SelectedItem.Text;
            int.TryParse(ddlText, out int ddlValue);

            Models.Product item = new Models.Product();
            item.CategoryId = ddlValue;

            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here
                Models.FTFGymEntities1 _pd = new Models.FTFGymEntities1();

                _pd.Products.Add(item); 
                _pd.SaveChanges();
                Response.Redirect("~/Admin/ViewProduct.aspx");
            }
        }

        
    }
}