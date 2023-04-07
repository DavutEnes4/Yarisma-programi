using System;
using System.IO;
using System.Collections.Generic;
using System.Security;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace WebApplication3.Modarator
{
    public partial class soruekle : System.Web.UI.Page
    {
        private SqlBaglanti database = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Aciklama.Text = "SORU EKLEME EKRANI<br>Lütfen istenilen bilgileri giriniz";
        }
        protected void Save_Click(object sender, EventArgs e)
        {
            bool sorutext = (SoruMetin.Text == "" || SoruMetin.Text == " ");
            bool dogrutext = (DogruCevap.Text == "" || DogruCevap.Text == " ");
            bool yanlis1text = (YanlisCevap1.Text == "" || YanlisCevap1.Text == " ");
            bool yanlis2text = (YanlisCevap2.Text == "" || YanlisCevap2.Text == " ");
            bool yanlis3text = (YanlisCevap3.Text == "" || YanlisCevap3.Text == " ");
            DateTime today = DateTime.Today;
            if (sorutext && dogrutext && yanlis1text && yanlis2text && yanlis3text)
            {
                Aciklama.Text = "SORU EKLEME EKRANI<br>Lütfen eksik bilgileri doldurun";
            }
            else
            {
                //SoruMetin.Text  = SecurityElement.Escape(SoruMetin.Text);
                //DogruCevap.Text = SecurityElement.Escape(DogruCevap.Text);
                //YanlisCevap1.Text = SecurityElement.Escape(YanlisCevap1.Text);
                //YanlisCevap2.Text = SecurityElement.Escape(YanlisCevap2.Text);
                //YanlisCevap3.Text = SecurityElement.Escape(YanlisCevap3.Text);
                SqlCommand commandAdd = new SqlCommand("insert into Question(UploadDate,CategoryId,LevelId,Question,TReply,FReply1,FReply2,FReply3,Type) Values ('" + today + "', '" + Kategori.SelectedValue + "', '" + Duzey.SelectedValue + "','" + SoruMetin.Text + "', '" + DogruCevap.Text + "', '" + YanlisCevap1.Text + "', '" + YanlisCevap2.Text + "','" + YanlisCevap3.Text + "', '" + Tip.Checked + "')", database.connect());
                commandAdd.ExecuteNonQuery();
                Response.Redirect("soruekle.aspx");
            }
        }

        protected void Exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("panel.aspx");
        }
    }
}