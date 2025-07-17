using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
	public partial class Billing : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
			SqlConnection Con = new SqlConnection(connString);
			SqlCommand command = new SqlCommand("[HMSBillingEntry]", Con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("PatientId", txtPatientId.Text);
            command.Parameters.AddWithValue("PatientName", txtPatientName.Text);
            command.Parameters.AddWithValue("ConsultFee", txtConsultfee.Text);
            command.Parameters.AddWithValue("LabFee", txtLabFee.Text);
            command.Parameters.AddWithValue("MedicineCost", txtMedicineCost.Text);
            command.Parameters.AddWithValue("RoomRent", txtRoomRent.Text);
            command.Parameters.AddWithValue("Paid", ddlpaid.SelectedValue);
            Con.Open();
            int k = command.ExecuteNonQuery();
            if (k != 0)
            {
                lblmsg.Text = "Bill Details Added Succesfully";
                lblmsg.ForeColor = System.Drawing.Color.Blue;
            }
            else
            {
                lblmsg.Text = "Failed";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
            Con.Close();
        }
    }
    }
