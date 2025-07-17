using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            SqlCommand sqlCommand = new SqlCommand("[AddDoctor]", con);
            SqlCommand cmdd = sqlCommand;
            cmdd.CommandType = CommandType.StoredProcedure;
            cmdd.Parameters.AddWithValue("@DoctorName", txtdoctorname.Text.Trim());
            cmdd.Parameters.AddWithValue("@Specialization", ddlspecialization.SelectedValue);
            cmdd.Parameters.AddWithValue("@ContactNumber", txtContactNumber.Text.Trim());
            cmdd.Parameters.AddWithValue("@EmailId", txtEmailId.Text.Trim());
            cmdd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
            cmdd.Parameters.AddWithValue("@Gender", chkgender.SelectedValue);
            cmdd.Parameters.AddWithValue("@Experience", txtExperience.Text.Trim());
            cmdd.Parameters.AddWithValue("@AvailableDaysTimings", txtAvailable.Text.Trim());
            cmdd.Parameters.AddWithValue("@Status", ddlStatus.SelectedValue);

            con.Open();
            int k = cmdd.ExecuteNonQuery();
            if (k != 0)
            {
                lblmsg.Text = "Doctor Added Succesfully";
                lblmsg.ForeColor = System.Drawing.Color.Blue;
            }
            else
            {
                lblmsg.Text = "Failed";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }

        public void ClearControls()
        {
            txtdoctorname.Text = "";
            ddlspecialization.SelectedValue = "";
            txtContactNumber.Text = "";
            txtEmailId.Text = "";
            txtQualification.Text = "";
            chkgender.SelectedValue = "";
            txtExperience.Text = "";
            txtAvailable.Text = "";
            ddlStatus.SelectedValue = "";
            
            lblmsg.Text = "";

        }

    }
}
