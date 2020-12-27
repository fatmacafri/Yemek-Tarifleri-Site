using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string Yemekid = "";
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Yemekid = Request.QueryString["Yemekid"];
        SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Yemekid);
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();


        //Yorumları Listeleme

        SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where Yemekid=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", Yemekid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();


        Yemekid = Request.QueryString["Yemekid"];
        SqlCommand komut3 = new SqlCommand("Select * From Tbl_Yemekler where Yemekid=@p3", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p3", Yemekid);
        SqlDataReader dr3 = komut3.ExecuteReader();
        DataList3.DataSource = dr3;
        DataList3.DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Txt_Gonderen.Text);
        komut.Parameters.AddWithValue("@p2", Txt_Mail.Text);
        komut.Parameters.AddWithValue("@p3", Txt_Mesaj.Text);
        komut.Parameters.AddWithValue("@p4", Yemekid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        Txt_Gonderen.Text = string.Empty;
        Txt_Mail.Text= string.Empty;
        Txt_Mesaj.Text= string.Empty;
        
    }
}