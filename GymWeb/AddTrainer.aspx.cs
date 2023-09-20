using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
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
            HttpPostedFile postedImg = TrainerImgUpload.PostedFile;

            if (postedImg != null)
            {
                string fileName = Path.GetFileName(postedImg.FileName);
                string fileExtension = Path.GetExtension(fileName);
                int fileSize = postedImg.ContentLength;


                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    DateTime dateTimeVariable = DateTime.Now;
                    string format = "yyyy-MM-dd HH:mm:ss";    // modify the format depending upon input required in the column in database 

                    // Insert into "Trainer" Table
                    SqlCommand cmd = new SqlCommand("insert into Trainer(First_Name,Last_Name,Email,Country_Calling_Code,Phone_Number,Joined_Date,Image_Name) " +
                        "values(@First_Name, @Last_Name, @Email, @Country_Calling_Code, @Phone_Number, @Joined_Date, @Image_Name);", con);
                    cmd.Parameters.AddWithValue("@First_Name", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@Last_Name", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@Country_Calling_Code", ddlCountryCode.SelectedValue);
                    cmd.Parameters.AddWithValue("@Phone_Number", txtPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@Joined_Date", dateTimeVariable.ToString(format));
                    cmd.Parameters.AddWithValue("@Image_Name", String.Concat("Img/Trainer/" + fileName));

                    // Insert into "Images" Table
                    SqlCommand cmd2 = new SqlCommand("insert into Images(Name,Size,Image_Data) " +
                                                "values(@Name, @Size, @Image_Data);", con);

                    if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" ||
                        fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
                    {
                        Stream stream = postedImg.InputStream;
                        BinaryReader binaryReader = new BinaryReader(stream);
                        byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                        cmd2.Parameters.AddWithValue("@Name", String.Concat("Img/Trainer/" + fileName));
                        cmd2.Parameters.AddWithValue("@Size", fileSize);
                        cmd2.Parameters.AddWithValue("@Image_Data", bytes);

                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Only images (.jpg, .png, .gif and .png) can be uploaded')", true);
                    }


                    con.Open();
                    cmd.ExecuteNonQuery();
                    cmd2.ExecuteNonQuery();
                    con.Close();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Trainer Added SuccessFully!')", true);

                    Response.Redirect("Trainers.aspx");
                }

            }
            else
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    DateTime dateTimeVariable = DateTime.Now;
                    string format = "yyyy-MM-dd HH:mm:ss";    // modify the format depending upon input required in the column in database 

                    SqlCommand cmd = new SqlCommand("insert into Trainer(First_Name,Last_Name,Email,Country_Calling_Code,Phone_Number,Joined_Date,Image_Name) " +
                        "values(@First_Name, @Last_Name, @Email, @Country_Calling_Code, @Phone_Number, @Joined_Date, @Image_Name);", con);
                    cmd.Parameters.AddWithValue("@First_Name", txtFirstName.Text);
                    cmd.Parameters.AddWithValue("@Last_Name", txtLastName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@Country_Calling_Code", ddlCountryCode.SelectedValue);
                    cmd.Parameters.AddWithValue("@Phone_Number", txtPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@Joined_Date", dateTimeVariable.ToString(format));
                    cmd.Parameters.AddWithValue("@Image_Name", "Img/Trainer/default.png");

                    // Insert into "Images" Table
                    SqlCommand cmd2 = new SqlCommand("insert into Images(Name,Size,Image_Data) " +
                                                "values(@Name, @Size, @Image_Data);", con);


                    Stream stream = postedImg.InputStream;
                    BinaryReader binaryReader = new BinaryReader(stream);
                    byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                    cmd2.Parameters.AddWithValue("@Name", "Img/Trainer/default.png");
                    cmd2.Parameters.AddWithValue("@Size", 11961);
                    cmd2.Parameters.AddWithValue("@Image_Data", bytes);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    cmd2.ExecuteNonQuery();
                    con.Close();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Trainer Added SuccessFully!')", true);

                    Response.Redirect("Trainers.aspx");
                }
            }
        }

        protected void txtPhoneNumber_TextChanged(object sender, EventArgs e)
        {

        }
    }
}