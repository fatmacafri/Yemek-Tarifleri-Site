<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="separator">
       <asp:Label ID="Label4" runat="server" Text="KATEGORİ DÜZENLE" CssClass="text-white font-italic font-weight-bold" style="font-size: x-large"></asp:Label> 
    </div>
            <div class="row">
                <div class="col-3"><asp:Label ID="Label1" runat="server" Text="Kategori Ad" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
                <div class="col-9"><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control rounded-pill"></asp:TextBox></div>
            </div>
      <br />

             <div class="row">
                  <div class="col-3"> <asp:Label ID="Label2" runat="server" Text="Adet" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
                 <div class="col-9"><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control rounded-pill"></asp:TextBox></div>
             </div>            
      
        
           
            
      
          
       
            <br />
       
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success rounded-pill btn-block" Text="Güncelle" OnClick="Button1_Click" />
      





</asp:Content>

