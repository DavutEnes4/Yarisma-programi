using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Modarator
{
    public partial class soruduzenle : System.Web.UI.Page
    {
        SqlBaglanti database = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private string columnselect()
        {
            int column = Convert.ToInt32(FiltreSecin.SelectedValue);
            string columsql = "";
            switch(column)
            {
                case 1:
                    columsql = "[UploadDate]";
                    break;
                case 2:
                    columsql = "[CategoryId]";
                    break;
                case 3:
                    columsql = "[LevelId]";
                    break;
                case 4:
                    columsql = "[Question]";
                    break;
                case 5:
                    columsql = "[TReply]";
                    break;
                case 6:
                    columsql = "[FReply1],[FReply2],[FReply3]";
                    break;
                case 7:
                    columsql = "[FReply2]";
                    break;
                case 8:
                    columsql = "[FReply3]";
                    break;
                case 9:
                    columsql = "[Type]";
                    break;
                default:
                    columsql = "[Question]";
                    break;
            }
            return columsql;
        }
        protected void tolist(object sender, EventArgs e)
        {
            columnselect();
            DatabaseQuestion.ConnectionString = "Data Source=JEXZA;Initial Catalog=Yarisma;Integrated Security=True";
            DatabaseQuestion.ProviderName = "System.Data.SqlClient";
            DatabaseQuestion.SelectCommand = "SELECT * FROM [Question] WHERE " + columnselect() + " LIKE '%" + AranacakMetin.Text + "%'";
        }
    }
}