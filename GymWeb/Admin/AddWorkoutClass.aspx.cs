using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWeb.Admin
{
    public partial class AddWorkoutClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBind();
        }

        //Insert New Sample Data into Workout Class
        protected void InsertClassTitle(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("insert into WorkoutClass(Title, Description, Capacity, CurEnroll, Time, Date, Price)"
                    + "values(@Title, @Description, @Capacity, @CurEnroll, @Time, @Date, @Price);", connection);

                cmd.Parameters.AddWithValue("@Title", ddlTitle.SelectedValue);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@Capacity", ddlCapacity.SelectedValue);
                cmd.Parameters.AddWithValue("@CurEnroll", 0);
                cmd.Parameters.AddWithValue("@Time", txtTime.Text);
                cmd.Parameters.AddWithValue("@Date", txtDate.Text);
                cmd.Parameters.AddWithValue("@Price", txtPrice.Text);


                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void ddlCapacity_SelectedIndexChanged(object sender, EventArgs e)
        {
            int a = int.TryParse(ddlCapacity.SelectedValue, out a) ? a : 0;
        }

        protected void BtnSubmitClear_Click(object sender, EventArgs e)
        {
            ddlTitle.ClearSelection();
            txtDescription.Text = "";
            ddlCapacity.ClearSelection();
            txtTime.Text = "";
            txtDate.Text = "";
            txtPrice.Text = "";
            lbltest.Text = "";
        }
    }
}