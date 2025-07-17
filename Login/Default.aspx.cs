using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Hospital_Management_System
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
        }
        string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                string username = txtuname.Text;
                string password = txtupass.Text;
                string role = rblRole.SelectedValue;

                if (string.IsNullOrEmpty(role))
                {
                    lblMessage.Text = "Please select a role.";
                    return;
                }


                using (SqlConnection con = new SqlConnection(connString))
                {
                    string query = "SELECT COUNT(*) FROM Users WHERE Username=@Username AND Password=@Password AND Role=@Role";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@Role", role);

                    con.Open();
                    int count = (int)cmd.ExecuteScalar();

                    if (count == 1)
                    {
                        Session["Username"] = username;
                        Session["Role"] = role;

                        // Redirect based on role
                        if (role == "Admin")
                            Response.Redirect("Admin.aspx");
                       else if (role == "Doctor")
                            Response.Redirect("DoctorLogin.aspx");
                        else if (role == "Receptionist")
                            Response.Redirect("ReceptionistLogin.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Invalid Credetials.";
                    }
                }
            }
        }

    }

}
