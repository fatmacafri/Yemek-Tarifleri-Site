using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler ", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
        
    }



    


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Response.Redirect("AramaSayfası.aspx?q=" + TextBox1.Text.Trim());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Giris.aspx");
    }
}
