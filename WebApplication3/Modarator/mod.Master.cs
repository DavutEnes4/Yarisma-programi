using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Modarator
{
    public partial class mod : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void HomeClick(object sender, EventArgs e)
        {
            Response.Redirect("panel.aspx");
        }
        protected void QuestionAddClick(object sender, EventArgs e)
        {
            Response.Redirect("soruekle.aspx");
        }
        protected void ExcelClick(object sender, EventArgs e)
        {
            Response.Redirect("excelekle.aspx");
        }
        protected void QuestionClick(object sender, EventArgs e)
        {
            Response.Redirect("soruduzenle.aspx");
        }
        

    }
}