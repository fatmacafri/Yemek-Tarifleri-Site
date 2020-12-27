<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="separator">
        <asp:Label ID="Label6" runat="server" Text="KATEGORİ LİSTESİ" CssClass="text-center text-white font-italic font-weight-bold" style="font-size: x-large"></asp:Label>
    </div>
    <div class="list-group">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="list-group-item list-group-item-action d-flex align-items-center rounded-pill">
                    <div class="flex-fill">
                        <div class="font-weight-600">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </div>
                    </div>
                    <div>
                        <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil"><i class="fa fa-2x fa-trash-o"></i></a>
                    </div>
                    <div style="margin-left: 25px">
                        <a href="KategoriDuzenle.aspx?Kategoriid=<%# Eval("Kategoriid")%>"><i class="fa fa-2x fa-edit "></i></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    
    <div class="separator">
        <asp:Label ID="Label4" runat="server" Text="YENİ KATEGORİ EKLE" CssClass="text-center text-white font-italic font-weight-bold" style="font-size: x-large"></asp:Label>
    </div>
    <div class="row">
        <div class="col-3"><asp:Label ID="Label2" runat="server" Text="Kategori Ad" CssClass="form-text text-right text-white font-italic font-weight-bold"></asp:Label></div>
        <div class="col-9"><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control rounded-pill"></asp:TextBox></div>
    </div>
    
    
    <br />
   
    <asp:Button ID="BtnEkle" runat="server" CssClass="btn btn-block btn-success rounded-pill" Text="Ekle" OnClick="BtnEkle_Click" />



</asp:Content>
