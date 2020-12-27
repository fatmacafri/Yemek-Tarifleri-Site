<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="separator">
        <asp:Label ID="Label7" runat="server" Text="YEMEK LİSTESİ" CssClass="text-center text-white font-italic font-weight-bold" Style="font-size: x-large"></asp:Label>
    </div>
    <div class="list-group">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="list-group-item list-group-item-action d-flex align-items-center rounded-pill">
                    <div class="flex-fill">
                        <div class="font-weight-600">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </div>
                    </div>
                    <div>
                        <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"><i class="fa fa-2x fa-trash-o"></i></a>
                    </div>
                    <div style="margin-left: 25px">
                        <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid")%>"><i class="fa fa-2x fa-edit "></i></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div class="separator">
        <asp:Label ID="Label6" runat="server" Text="YENİ YEMEK EKLE" CssClass="text-center text-white font-italic font-weight-bold" Style="font-size: x-large"></asp:Label>
    </div>

    <div class="row">
        <div class="col-3">
            <asp:Label ID="Label2" runat="server" Text="Yemek Ad" CssClass="form-text text-white"></asp:Label>
        </div>
        <div class="col-9">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control rounded-pill"></asp:TextBox>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-3">
            <asp:Label ID="Label3" runat="server" Text="Malzemeler" CssClass="form-text text-white"></asp:Label>
        </div>
        <div class="col-9">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control " Height="100px" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-3">
            <asp:Label ID="Label4" runat="server" Text="Tarif" CssClass="form-text text-white"></asp:Label>
        </div>
        <div class="col-9">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Height="200px" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-3">
            <asp:Label ID="Label5" runat="server" Text="Kategori" CssClass="form-text text-white"></asp:Label>
        </div>
        <div class="col-9">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass=" form-control rounded-pill"></asp:DropDownList>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-3">
            <asp:Label ID="Label8" runat="server" Text="Resim" CssClass="form-text text-white"></asp:Label>
        </div>
        <div class="col-9">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file" />
        </div>
    </div>
    <br />
    <asp:Button ID="BtnEkle" runat="server" CssClass="btn btn-success btn-block rounded-pill" Text="Ekle" OnClick="BtnEkle_Click" />
</asp:Content>

