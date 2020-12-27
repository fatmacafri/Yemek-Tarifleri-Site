<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="Giris.aspx.cs" Inherits="Giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="separator text-center" style="margin-top: 100px">
        <asp:Label ID="Label3" runat="server" Text="HOŞGELDİNİZ" CssClass="text-white font-italic font-weight-bold" Style="font-size: x-large"></asp:Label>
    </div>
    <div class="card" style="margin-top: 50px">
        <div class="card-body">
            <div class="form-group ">
                <div class="row-lg-2">
                    <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı" class="form-text"></asp:Label>
                </div>
                <div class="row-lg-10">
                    <asp:TextBox ID="TxtAd" placeholder="Kullanıcı Adını Giriniz" runat="server" class="form-control rounded-pill"></asp:TextBox>
                </div>
            </div>

            <div class="form-group ">
                <div class="row-lg-2">
                    <asp:Label ID="Label2" runat="server" Text="Şifre" class="form-text"></asp:Label>
                </div>
                <div class="row-lg-10">
                    <asp:TextBox ID="TxtSifre" type="password" placeholder="Şifreyi Giriniz" runat="server" class="form-control rounded-pill"></asp:TextBox>
                 

                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="btn btn-success btn-block rounded-pill" OnClick="Button1_Click" />
                </div>
                <div class="col-lg-6">
                    <asp:Button ID="Button2" runat="server" Text="Kapat" CssClass="btn btn-danger btn-block rounded-pill" OnClick="Button2_Click" />

                </div>
            </div>

        </div>
    </div>

</asp:Content>
