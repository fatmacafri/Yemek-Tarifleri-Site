using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 

public partial class YorumYap : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string Yemekid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Yemekid = Request.QueryString["Yemekid"];

        SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Yemekid);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label1.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();
    }

   

    protected void Button1_Click1(object sender, EventArgs e)
    {



        //SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        //komut.Parameters.AddWithValue("@p1", Txt_Gonderen.Text);
        //komut.Parameters.AddWithValue("@p2", Txt_Mail.Text);
        //komut.Parameters.AddWithValue("@p3", Txt_Mesaj.Text);
        //komut.Parameters.AddWithValue("@p4", Yemekid);
        //komut.ExecuteNonQuery();
        //bgl.baglanti().Close();
    }
}