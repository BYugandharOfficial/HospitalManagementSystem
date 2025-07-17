using Org.BouncyCastle.Asn1.Cmp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class Doctor : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Refreshdoctordata();
                Refreshpatientdata();
              
            }
            
        }

        protected void RblRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlDoctor.Visible = false;
            pnlPatient.Visible = false;

            if (rblRole.SelectedValue == "Doctors")
            {
                pnlDoctor.Visible = true;
            }
            else if (rblRole.SelectedValue == "Patients")
            {
                pnlPatient.Visible = true;
            }
        }

        public void Refreshdoctordata()
        {
            string connString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("GetHMSDoctors", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GvDoctors.DataSource = ds;
            GvDoctors.DataBind();
        }

        public void Refreshpatientdata()
        {
            string connString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("[DoctorPatientChkupData]", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GvPatients.DataSource = ds;
            GvPatients.DataBind();
        }

    
       

        protected void GvDoctors_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvDoctors.PageIndex = e.NewPageIndex;
            Refreshdoctordata();
        }

        protected void GvPatients_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvPatients.PageIndex = e.NewPageIndex;
            Refreshpatientdata();
        }

        protected void GvPatients_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvPatients.EditIndex = e.NewEditIndex;
            Refreshpatientdata();
        }

        protected void GvPatients_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            con = new SqlConnection(connString);
            TextBox PatientId = GvPatients.Rows[e.RowIndex].FindControl("txtPatientId") as TextBox;

            TextBox PatientName = GvPatients.Rows[e.RowIndex].FindControl("txtPatientName") as TextBox;
            TextBox Gender = GvPatients.Rows[e.RowIndex].FindControl("txtGender") as TextBox;
            TextBox Age = GvPatients.Rows[e.RowIndex].FindControl("txtAge") as TextBox;
            TextBox ContactNumber = GvPatients.Rows[e.RowIndex].FindControl("txtContactNumber") as TextBox;
        
            TextBox DoctorId = GvPatients.Rows[e.RowIndex].FindControl("txtDoctorId") as TextBox;
            TextBox DoctorName = GvPatients.Rows[e.RowIndex].FindControl("txtDoctorName") as TextBox;
            TextBox Department = GvPatients.Rows[e.RowIndex].FindControl("txtDepartment") as TextBox;
            TextBox Problem = GvPatients.Rows[e.RowIndex].FindControl("txtProblem") as TextBox;
            TextBox VisitStatus = GvPatients.Rows[e.RowIndex].FindControl("txtVisitStatus") as TextBox;
            TextBox CheckupCompleted = GvPatients.Rows[e.RowIndex].FindControl("txtCheckupCompleted") as TextBox;
            TextBox DaignosisTest = GvPatients.Rows[e.RowIndex].FindControl("txtDaignosisTest") as TextBox;


            SqlCommand cmd = new SqlCommand("DoctorPatientChkupUpdate", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PatientId", PatientId.Text);
            cmd.Parameters.AddWithValue("@PatientName", PatientName.Text);
            cmd.Parameters.AddWithValue("@Gender", Gender.Text);
            cmd.Parameters.AddWithValue("@Age", Age.Text);
            cmd.Parameters.AddWithValue("@ContactNumber", ContactNumber.Text);
           
            cmd.Parameters.AddWithValue("@DoctorId", DoctorId.Text);
            cmd.Parameters.AddWithValue("@DoctorName", DoctorName.Text);
            cmd.Parameters.AddWithValue("@Department", Department.Text);
            cmd.Parameters.AddWithValue("@Problem", Problem.Text);
            cmd.Parameters.AddWithValue("@VisitStatus", VisitStatus.Text);
            cmd.Parameters.AddWithValue("@CheckupCompleted", CheckupCompleted.Text);
            cmd.Parameters.AddWithValue("@DaignosisTest", DaignosisTest.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GvPatients.EditIndex = -1;
            Refreshpatientdata();
            {
                lblmsg.Text = "Checkup Added Successfully";
                lblmsg.ForeColor = System.Drawing.Color.Blue;
            }
        }

        protected void GvPatients_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvPatients.EditIndex = -1;
            Refreshpatientdata();
        }

        protected void GvDoctors_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvPatients.EditIndex = e.NewEditIndex;
            Refreshdoctordata();
        }

        protected void GvDoctors_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
         
            TextBox txtDoctorId = GvDoctors.Rows[e.RowIndex].FindControl("txtDoctorId") as TextBox;
            TextBox txtDoctorName = GvDoctors.Rows[e.RowIndex].FindControl("txtDoctorName") as TextBox;
            TextBox txtSpecialization = GvDoctors.Rows[e.RowIndex].FindControl("txtSpecialization") as TextBox;
            TextBox txtContactNumber = GvDoctors.Rows[e.RowIndex].FindControl("txtContactNumber") as TextBox;
            TextBox txtEmailId = GvDoctors.Rows[e.RowIndex].FindControl("txtEmailId") as TextBox;
            TextBox txtQualification = GvDoctors.Rows[e.RowIndex].FindControl("txtQualification") as TextBox;
            TextBox txtGender = GvDoctors.Rows[e.RowIndex].FindControl("txtGender") as TextBox;
            TextBox txtExperience = GvDoctors.Rows[e.RowIndex].FindControl("txtExperience") as TextBox;
            TextBox txtAvailable = GvDoctors.Rows[e.RowIndex].FindControl("txtAvailable") as TextBox;
            TextBox txtStatus = GvDoctors.Rows[e.RowIndex].FindControl("txtStatus") as TextBox;

            
            int doctorId = Convert.ToInt32(txtDoctorId.Text);
            string doctorName = txtDoctorName.Text;
            string specialization = txtSpecialization.Text;
            string contactNumber = txtContactNumber.Text;
            string emailId = txtEmailId.Text;
            string qualification = txtQualification.Text;
            string gender = txtGender.Text;
            string experience = txtExperience.Text;
            string status = txtStatus.Text;

           
            DateTime availableTime;
            if (!DateTime.TryParse(txtAvailable.Text, out availableTime))
            {
                lblmsg.Text = "Please enter a valid date and time format (e.g., 2025-07-14 10:30).";
                return;
            }

         
            string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand("DoctorTimeUpdate", con);
                cmd.CommandType = CommandType.StoredProcedure;

               
                cmd.Parameters.AddWithValue("@DoctorId", doctorId);
                cmd.Parameters.AddWithValue("@DoctorName", doctorName);
                cmd.Parameters.AddWithValue("@Specialization", specialization);
                cmd.Parameters.AddWithValue("@ContactNumber", contactNumber);
                cmd.Parameters.AddWithValue("@EmailId", emailId);
                cmd.Parameters.AddWithValue("@Qualification", qualification);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@Experience", experience);
                cmd.Parameters.AddWithValue("@AvailableDaysTimings", availableTime);
                cmd.Parameters.AddWithValue("@Status", status);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

           
            GvDoctors.EditIndex = -1;
            Refreshdoctordata();
            lblmsgNew.Text = "Doctor available time updated successfully";
            lblmsgNew.ForeColor = System.Drawing.Color.Blue;
        }


        

        

        protected void GvDoctors_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvDoctors.EditIndex = -1;
            Refreshdoctordata();
        }
    }
}