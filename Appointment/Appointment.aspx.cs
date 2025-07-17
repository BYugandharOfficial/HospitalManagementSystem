using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.Util;

namespace Hospital_Management_System
{
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                ClearControls();

            }
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand sqlCommand = new SqlCommand("[HMSPatient]", conn);
            SqlCommand cmmd = sqlCommand;
            cmmd.CommandType = CommandType.StoredProcedure;
            cmmd.Parameters.AddWithValue("PatientName", txtPatientName.Text);
            cmmd.Parameters.AddWithValue("Gender", chkgender.SelectedValue);
            cmmd.Parameters.AddWithValue("Age", txtage.Text);
            cmmd.Parameters.AddWithValue("ContactNumber", txtContactNumber.Text);
            cmmd.Parameters.AddWithValue("AppointmentDate", txtAppointmentDate.Text);
            cmmd.Parameters.AddWithValue("DoctorId", txtdocterid.Text);
            cmmd.Parameters.AddWithValue("DoctorName", txtdoctername.Text);
            cmmd.Parameters.AddWithValue("Department", ddldepartment.SelectedValue);
            cmmd.Parameters.AddWithValue("VisitStatus", ddlVisitStatus.SelectedValue);
            cmmd.Parameters.AddWithValue("Problem", txtProblem.Text);
            cmmd.Parameters.AddWithValue("CheckupCompleted", ddlchkcmp.SelectedValue);
            cmmd.Parameters.AddWithValue("DiagnosisTest", ddldgns.SelectedValue);

            conn.Open();
            int k = cmmd.ExecuteNonQuery();
            if (k != 0)
            {
                lblmsg.Text = "Patient Added Succesfully";
                lblmsg.ForeColor = System.Drawing.Color.Blue;
            }
            else
            {
                lblmsg.Text = "Failed";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
            conn.Close();
        }

        public void ClearControls()
        {
            txtPatientName.Text = "";
            chkgender.Text = "";
            txtage.Text = "";
            txtContactNumber.Text = "";
            txtAppointmentDate.Text = "";
            txtdocterid.Text = "";
            txtdoctername.Text = "";
            ddldepartment.SelectedValue = "";
            ddlVisitStatus.SelectedValue = "";
            txtProblem.Text = "";
            ddlchkcmp.SelectedValue = "";
            ddldgns.SelectedValue = "";
            lblmsg.Text = "";

        }

    }
}