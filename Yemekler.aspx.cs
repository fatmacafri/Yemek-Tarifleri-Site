using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string islem = "";
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];

            //KATEGORİ LİSTESİ
            SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

        //YEMEK LİSTESİ
        SqlCommand komut = new SqlCommand("select * from tbl_yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if (islem == "sil")
        {
            SqlCommand komut2 = new SqlCommand("delete from tbl_yemekler where yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Redirect("Yemekler.aspx");
        }
        

    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {

        //string img = "";

        //if (FileUpload1.FileName.ToString() == "") { return; }
        //else { img = FileUpload1.FileName.ToString(); }

        //string imageUrl = FileUpload1.FileName.ToString();

        //FileUpload1.SaveAs(Server.MapPath(imageUrl));
        // string yuklemeyeri = Server.MapPath("~/resim/" + FileUpload1.FileName);
        

        //YEMEK EKLEME
        SqlCommand komut = new SqlCommand("insert into tbl_yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid,yemekresim) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", "~/resim/"+FileUpload1.FileName);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        if (FileUpload1.HasFile) { FileUpload1.SaveAs(Server.MapPath("~/resim/") + FileUpload1.FileName); }
        //KATEGORİ ADEDİNİ ARTTIRMA
        SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();


        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        DropDownList1.DataTextField = string.Empty;



    }
}