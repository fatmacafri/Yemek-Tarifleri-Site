<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="separator">
        <asp:Label ID="Label9" runat="server" Text=" TARİF DETAYLAR" CssClass="text-center text-white font-italic font-weight-bold" style="font-size: x-large"></asp:Label>
    </div>



    <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("TarifResim") %>' CssClass="card-img-top"/>
  
    <div class="row" style="margin-top:20px">
        <div class="col-3"><asp:Label ID="Label1" runat="server" Text="Tarif Ad" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"> <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></div>
    </div>
      <br />
     <div class="row">
        <div class="col-3"><asp:Label ID="Label2" runat="server" Text="Tarif Malzemeler" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="MultiLine" Height="200px"></asp:TextBox></div>
    </div>
      <br />
     <div class="row">
        <div class="col-3"><asp:Label ID="Label3" runat="server" Text="Yapılış" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Height="200px" TextMode="MultiLine"></asp:TextBox></div>
    </div>
      <br />
    <%-- <div class="row">
        <div class="col-3"><asp:Label ID="Label4" runat="server" Text="Tarif Resim" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:FileUpload ID="FileUpload1" runat="server" type="file"/></div>
    </div>
      <br />--%>
    <div class="row">
        <div class="col-3"> <asp:Label ID="Label5" runat="server" Text="Kategori" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList></div>
    </div>    
    <br />
    <asp:Button ID="Button2" runat="server" Text="Onayla" CssClass="btn btn-success btn-block rounded-pill" OnClick="Button1_Click" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="separator">
        <asp:Label ID="Label6" runat="server" Text="TARİF ÖNEREN DETAYLAR" CssClass="text-center text-white font-italic font-weight-bold" style="font-size: x-large"></asp:Label>
    </div>
    
    <div class="row">
        <div class="col-3"><asp:Label ID="Label7" runat="server" Text="Ad Soyad" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></div>
    </div>
     <br />
     <div class="row">
        <div class="col-3"><asp:Label ID="Label8" runat="server" Text="Mail" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox></div>
    </div>
    
    
    
    
   
</asp:Content>

