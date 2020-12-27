using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class KategoriDuzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategoriid"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut2.Parameters.AddWithValue("@p3", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}