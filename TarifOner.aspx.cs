using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //KATEGORİ LİSTESİ
            SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        FileUpload1.SaveAs(Server.MapPath("~/tarifgelen/") + FileUpload1.FileName);
        SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,Kategoriid,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6,@t7)", bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
        komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
        komut.Parameters.AddWithValue("@t3", TxtYapilis.Text);
        komut.Parameters.AddWithValue("@t4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@t5", "~/tarifgelen/"+FileUpload1.FileName);
        komut.Parameters.AddWithValue("@t6", TxtTarifOneren.Text);
        komut.Parameters.AddWithValue("@t7", TxtMailAdresi.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        
        
        TxtTarifAd.Text = String.Empty;
        TxtMalzemeler.Text= String.Empty;
        TxtYapilis.Text= String.Empty;
        TxtTarifOneren.Text= String.Empty;
        TxtMailAdresi.Text= String.Empty;
        DropDownList1.DataTextField = string.Empty;


    }
}