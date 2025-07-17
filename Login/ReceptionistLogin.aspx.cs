using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
	public partial class ReceptionistLogin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
        {
            string userType = "Receptionist";

            if (userType == "Receptionist")
            {
                Image2.ImageUrl = "img/Receptionist.jpg";
            }
           
            else
            {
                Image2.ImageUrl = "~/images/default.png";
            }
        }
    }
}