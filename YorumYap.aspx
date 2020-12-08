<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YorumYap.aspx.cs" Inherits="YorumYap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
     <div class="row" style="margin-top: 40px">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                
                <div class="form-group row">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <div class="col-md-2">
                        <asp:Label ID="Label5" runat="server" Text="Ad Soyad" CssClass="auto-style1"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="Txt_Gonderen" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group row">
                    <div class="col-md-2">
                        <asp:Label ID="Label2" runat="server" Text="Mail Adresi" CssClass="auto-style1"></asp:Label>
                    </div>

                    <div class="col-md-10">
                        <asp:TextBox ID="Txt_Mail" runat="server" CssClass="form-control"></asp:TextBox>
                        <small class="form-text text-muted">(Mail adresinizi hiçkimse ile paylaşmayacağız.) </small>
                    </div>
                </div>


                <div class="form-group row">
                    <div class="col-md-2">
                        <asp:Label ID="Label4" runat="server" Text="Yorum" CssClass="auto-style1"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="Txt_Mesaj" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>


                <div class="text-center">
                    <asp:Button ID="Button1" runat="server" Text="Yorum Yap" class="btn btn-success" OnClick="Button1_Click1" />
                </div>
                <br />
            </div>
            <div class="col-md-2"></div>
        </div>
        </div>

</asp:Content>

