<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="separator">
        <asp:Label ID="Label6" runat="server" Text="YEMEK DETAYINI DÜZENLE" CssClass="text-center text-white font-italic font-weight-bold" Style="font-size: x-large"></asp:Label>
    </div>


     
        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("YemekResim") %>' CssClass="card-img-top" />

        <div class="row" style="margin-top: 10px">
            <div class="col-3">
                <asp:Label ID="Label7" runat="server" Text="Resim Değiştir" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
            <div class="col-6">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>

            <div class="col-3">
                <asp:Button ID="Button3" runat="server" Text="Onayla" CssClass="btn btn-info btn-sm" OnClick="Button3_Click" />
            </div>
        </div>
    
       <br />
     <div class="row">
        <div class="col-3">
            <asp:Label ID="Label1" runat="server" Text="Yemek Ad" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label>
        </div>
        <div class="col-9">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-3">
            <asp:Label ID="Label2" runat="server" Text="Malzemeler" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label>
        </div>
        <div class="col-9">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-3">
             <asp:Label ID="Label3" runat="server" Text="Tarif" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label>
        </div>
        <div class="col-9">
             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Height="300px" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>

    <br />
    <div class="row">
        <div class="col-3">
            <asp:Label ID="Label4" runat="server" Text="Kategori" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label>
        </div>
        <div class="col-9">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
    </div>
<br />

    <div class="row">
        <div class="col-6"><asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-block btn-success rounded-pill" OnClick="Button1_Click" /></div>
        <div class="col-6"> <asp:Button ID="Button2" runat="server" Text="Günün Yemeği Seç" CssClass="btn btn-block btn-warning rounded-pill" OnClick="Button2_Click" /></div>
    </div>
     
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

