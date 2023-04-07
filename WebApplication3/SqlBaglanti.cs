using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class SqlBaglanti
    {
        public SqlConnection connect()
        {
            /*
             * Burada veri tabanımıza bağlantımızı gerçekleştirdik
             * Veri tabanımıza bağlanmak için SqlConnection sınıfını kullandık ve bağlantıyı gerçekleştirdik
             * ayriyeten önceden oluşturulmuş yada program çalışırken kulanılmayan sql
             * bağlantı havuzlarınıda Clear ile siliyoruz
             */
            SqlConnection connect = new SqlConnection("Data Source=JEXZA;Initial Catalog=Yarisma;Integrated Security=True");
            connect.Open();
            SqlConnection.ClearAllPools();
            SqlConnection.ClearPool(connect);
            return (connect);
        }
    }
}