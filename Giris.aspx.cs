using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Giris : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    public static int ID;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from tbl_yonetici where YoneticiAdı='"+TxtAd.Text+"'and YoneticiSifre='"+TxtSifre.Text+"'", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            ID= Convert.ToInt32(oku["Yoneticiid"].ToString());         
            Response.Redirect("Admin.aspx");
           
        }
        else
        {
            Response.Write("<script>alert('HATALI KULLANICI ADI VEYA ŞİFRE')</script>");
        }
            TxtAd.Text = string.Empty;
            TxtSifre.Text = string.Empty;
            bgl.baglanti().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Anasayfa.aspx");
        TxtAd.Text = string.Empty;
        TxtSifre.Text = string.Empty;
    }



   
}