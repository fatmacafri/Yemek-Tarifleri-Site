using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AramaSayfası : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["q"] != null)
        {
            string keyword = Request.QueryString["q"].ToString();

            SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_Yemekler where YemekAd like '%" + keyword + "%'", bgl.baglanti());
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

    }

   
}