using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Management_System
{
    public partial class Receptionist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                RefreshdataDoctor();
                RefreshdataPatient();
            }

        }

        protected void rblRole_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Hide all panels first
            pnlDoctor.Visible = false;
            pnlPatient.Visible = false;

            // Show the selected panel
            if (rblRole.SelectedValue == "Doctors")
            {
                pnlDoctor.Visible = true;
            }
            else if (rblRole.SelectedValue == "Patients")
            {
                pnlPatient.Visible = true;
            }

        }


        public void RefreshdataDoctor()
        {
            string connString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("[GetHMSDoctors]", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GvDoctors.DataSource = ds;
            GvDoctors.DataBind();
        }
        public void RefreshdataPatient()
        {
            string connString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("GetHMSPatients", con);
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
            RefreshdataDoctor();
        }

        protected void GvPatients_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvPatients.PageIndex = e.NewPageIndex;
            RefreshdataPatient();
        }

        protected void GvPatients_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvPatients.EditIndex = e.NewEditIndex;
            RefreshdataPatient();
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
        


            SqlCommand cmd = new SqlCommand("UpdateHMSPatients", con);
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
           
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GvDoctors.EditIndex = -1;
            RefreshdataPatient();
            {
                lblmsg.Text = "Patient came for Checkup";
                lblmsg.ForeColor = System.Drawing.Color.Blue;
            }
        }
        

        protected void GvPatients_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvPatients.EditIndex = -1;
            RefreshdataPatient();
        }
    }
}