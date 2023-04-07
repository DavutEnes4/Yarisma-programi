using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;


namespace WebApplication3.Modarator
{
    public partial class _default : System.Web.UI.Page
    {
        /*
         * Sql bağlantımızı gerçekleştirmek için sınıfımızdan bir nesne oluşturduk
         */
        private SqlBaglanti sql = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginText.Text = "Lütfen oturum açma bilgilerinizi giriniz";
        }

        protected void Btn_login_Click(object sender, EventArgs e)
        {
            SqlCommand loginup = new SqlCommand("Select * from Moderator where UserName='" + TextUserName.Text + "' and Password='" + TextPassword.Text+"'",sql.connect());
            SqlDataReader drgloginup = loginup.ExecuteReader();

            if (drgloginup.Read())
            {
                Response.Redirect("panel.aspx");
            }
            else
            {
                LoginText.Text = "Kulanıcı adı veya şifre yanlış";
            }
        }

        /*
         * Oturumun açılıp açılmadığını kontrol etmek için bir adet değişken oluşturduk oturum açıldıysa bize true dönecek ve siteye erişmemize izin vericek
         */
    }
}