using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        if (Page.IsPostBack == false)
        {
        SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            DropDownList1.Text = dr[7].ToString();
            Image1.ImageUrl = dr[4].ToString();
        }
        bgl.baglanti().Close();


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
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //string img = "";

        //if (FileUpload1.FileName.ToString() == "") { return; }
        //else { img = FileUpload1.FileName.ToString(); }

        //string imageUrl = FileUpload1.FileName.ToString();

        //FileUpload1.SaveAs(Server.MapPath(imageUrl));



        SqlCommand komut1 = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4 where yemekid=@p5", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut1.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut1.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut1.Parameters.AddWithValue("@p5", id);


        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //TÜM YEMEKLERİN DURUMU = FALSE OLDU
        SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //GÜNÜN YEMEĞİ İÇİN ID'YE GÖRE DURUMU = TRUE YAP.
        SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/resim/") + FileUpload1.FileName);

            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set yemekresim=@p7 where yemekid=@p8", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p7", "~/resim/" + FileUpload1.FileName);
            komut2.Parameters.AddWithValue("@p8", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}