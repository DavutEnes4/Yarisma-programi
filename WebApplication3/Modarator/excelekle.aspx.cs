using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Modarator
{
    public partial class excelekle : System.Web.UI.Page
    {
        private SqlBaglanti database = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (ExcelAl.HasFile)
                {
                    string filename = Path.GetFileName(ExcelAl.FileName);
                    string uniqueFileName = DateTime.Now.Ticks.ToString() + "_" + filename;
                    string filepath = "~/uploads/" + uniqueFileName;
                    ExcelAl.SaveAs(Server.MapPath(filepath));
                    GridViewLoad("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/uploads/") + uniqueFileName + ";Extended Properties='Excel 12.0;IMEX=1;'");
                }
            }
            else
            {
                GridViewLoad("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/Modarator/") + "ornek.xlsx" + ";Extended Properties='Excel 12.0;IMEX=1;'");
            }
        }
        
        void GridViewLoad(string connectionfile)
        {
            OleDbConnection connectionExcel = new OleDbConnection(connectionfile);
            connectionExcel.Open();

            OleDbCommand command = new OleDbCommand("Select * From [" + "Sayfa1" + "$]", connectionExcel);
            OleDbDataAdapter newQuestion = new OleDbDataAdapter(command);

            DataTable table = new DataTable();
            newQuestion.Fill(table);
            dataQuestion.DataSource = table;
            dataQuestion.DataBind();
        }
        protected void SaveClick(object sender, EventArgs e)
        {
            if (ExcelAl.HasFile)
            {
                DateTime today = DateTime.Today;
                foreach (GridViewRow row in dataQuestion.Rows)
                {
                    SqlCommand commandAdd = new SqlCommand("insert into Question(UploadDate,CategoryId,LevelId,Question,TReply,FReply1,FReply2,FReply3,Type) Values ('" + today + "', '" + Convert.ToInt32(row.Cells[0].Text) + "', '" + Convert.ToInt32(row.Cells[1].Text) + "','" + row.Cells[2].Text + "', '" + row.Cells[3].Text + "', '" + row.Cells[4].Text + "', '" + row.Cells[5].Text + "','" + row.Cells[6].Text + "', '" + row.Cells[7].Text + "')", database.connect());
                    commandAdd.ExecuteNonQuery();
                }

            }
            else
            {
                Aciklama.Text = "EXCEL GÖRÜNTELEME EKRANI<br>Lütfen excel tablonuzu yükleyin";
            }
        }
        protected void ExcelDownload(object sender, EventArgs e)
        {
            Response.Redirect("ornek.xlsx");
        }
        protected void ExitClick(object sender, EventArgs e)
        {
            Response.Redirect("panel.aspx");
        }
    }
}