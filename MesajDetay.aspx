<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="separator">
        <asp:Label ID="Label1" runat="server" Text="MESAJ GÖNDEREN DETAY" CssClass="text-center text-white font-italic font-weight-bold" Style="font-size: x-large"></asp:Label>
    </div>

    <div class="row">
        <div class="col-3"><asp:Label ID="Label2" runat="server" Text="Ad Soyad" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></div>
    </div>
    <br />
    <div class="row">
        <div class="col-3"><asp:Label ID="Label3" runat="server" Text="E-Posta" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></div>
    </div>
    <br />
    <div class="row">
        <div class="col-3"><asp:Label ID="Label4" runat="server" Text="Konu" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></div>
    </div>
    <br />
    <div class="row">
        <div class="col-3"><asp:Label ID="Label5" runat="server" Text="Mesaj" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox></div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

