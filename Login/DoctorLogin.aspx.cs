using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
	public partial class DoctorLogin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
        {
            string userType = "Doctor";

            if (userType == "Doctor")
            {
                Image1.ImageUrl = "img/Doctors.jpg";
            }
            
            else
            {
                Image1.ImageUrl = "~/images/default.png";
            }
        }
    }
}