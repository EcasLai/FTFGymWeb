using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWeb
{
    public partial class Gym : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Homepage.aspx");
        }
    }
}