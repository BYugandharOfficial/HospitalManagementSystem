using iTextSharp.text;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using Org.BouncyCastle.Asn1.Cmp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace Hospital_Management_System
{
	public partial class BillReport : System.Web.UI.Page 
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!Page.IsPostBack)
            {
                
                Refreshdataofreport();
                BindYourData();
                ExportGridToPDF();


            }     

        }
          
        public void Refreshdataofreport()
        {
            string connString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmdd = new SqlCommand("GetBillingReportData", con);
            cmdd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmdd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


        protected void BindYourData()
        {
            string connString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmdd = new SqlCommand("GetBillingReportData", con);
            cmdd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmdd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            ExportGridToPDF();
        }


        private void ExportGridToPDF()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            GridView1.AllowPaging = false;
            Refreshdataofreport(); // Load full data

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView1.RenderControl(hw);

            string gridHtml = sw.ToString();

            // Wrap GridView HTML in full document with table styling
            string htmlDocument = $@"
        <html>
        <head>
            <style>
                table {{
                    width: 96%;
                    border-collapse: collapse;
                }}
                th, td {{
                    border: 1px solid #000;
                    padding: 5px;
                    text-align: left;
                    font-size: 10px;
                }}
                th {{
                    background-color: #003366;
                }}
            </style>
        </head>
        <body>
            {gridHtml}
        </body>
        </html>";

            using (StringReader sr = new StringReader(htmlDocument))
            {
                using (Document pdfDoc = new Document(PageSize.A4, 0f, 9f, 9f, 0f))
                {
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();

                    XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, sr);

                    pdfDoc.Close();
                }
            }

            Response.End();
        }



        public override void VerifyRenderingInServerForm(Control control)
        {
            // This method must be overridden or you'll get a runtime error
        }
    
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Refreshdataofreport();
        }

    }
}