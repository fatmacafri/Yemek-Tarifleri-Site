using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {

        //ONAYLI YORUMLAR LİSTESİ
        SqlCommand komut = new SqlCommand("select * from tbl_yorumlar where yorumonay=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //ONAYSIZ YORUMLAR LİSTESİ
        SqlCommand komut2 = new SqlCommand("select * from tbl_yorumlar where yorumonay=0", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

    }
}