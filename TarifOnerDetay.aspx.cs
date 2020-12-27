using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("select * from tbl_tarifler where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[5].ToString();
                TextBox5.Text = dr[6].ToString();
                DropDownList1.Text = dr[7].ToString();
                Image1.ImageUrl = dr[4].ToString();
            }
            bgl.baglanti().Close();
        

        //if (Page.IsPostBack == false)
        //{
            //KATEGORİ LİSTESİ
            SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

        //}
}
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       

        //YEMEĞİ ANASAYFAYA EKLEME
        SqlCommand komut4 = new SqlCommand("insert into tbl_yemekler(yemekad,yemekmalzeme,yemektarif,yemekresim,kategoriid) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
        komut4.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut4.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut4.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut4.Parameters.AddWithValue("@p4", Image1.ImageUrl);
        komut4.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
        komut4.ExecuteNonQuery();
        bgl.baglanti().Close();

        //KATEGORİ ADEDİNİ ARTTIRMA
        SqlCommand komut5 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
        komut5.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut5.ExecuteNonQuery();
        bgl.baglanti().Close();


        //DURUM GÜNCELLEME
        SqlCommand komut3 = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=@p1", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", id);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();

        Response.Redirect("Tarifler.aspx");
    }

   
}