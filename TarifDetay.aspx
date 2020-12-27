<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TarifDetay.aspx.cs" Inherits="TarifDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-lg-6" style="margin-top: 40px">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <div class="text-left">
                            <strong><em>Malzemeler:</em></strong><br />
                            <em>
                                <asp:Label ID="Label2" runat="server" CssClass="card-text" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                <br />
                            </em>
                            <br />
                            <strong><em>Tarif:</em></strong><br />
                            <em>
                                <asp:Label ID="Label3" runat="server" CssClass="card-text" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                <br />
                            </em><small class="text-muted">
                                <br />
                                <em>Puan:<asp:Label ID="Label4" runat="server" CssClass="card-text" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    &nbsp;- EklenmeTarihi:
                            <asp:Label ID="Label5" runat="server" CssClass="card-text" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </em></small>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-lg-6"><div class="medium-header-container" style="margin-top:40px">
                <asp:DataList ID="DataList3" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("YemekResim") %>' CssClass="card-img w-100" />
                    </ItemTemplate>
                </asp:DataList>
            </div></div>       
        </div>


        <nav class="navbar navbar-light justify-content-center" style="background-color: #95b5ac; margin-top: 40px">
            <ul class="navbar-nav">
                <li class="nav-item nav-link">YORUMLAR</li>
            </ul>
        </nav>


        <div class="row" style="margin-top: 40px">         
           <div class="col-lg-2"></div>          
            <div class="col-lg-8">
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <div class="card-group">
                            <div class="card blockquote mb-4">
                                <div class="card-header bg-transparent border-success text-success">
                                    <strong>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="card-text "></asp:Label>
                                    </strong>
                                </div>
                                <div class="card-body">
                                    <p class="card-text">
                                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("Yorumicerik") %>' CssClass="card-text"></asp:Label>
                                    </p>
                                </div>
                                <p class="card-text">
                                    <small class="text-muted">
                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YorumTarih") %>' CssClass="card-text"></asp:Label></small>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-lg-2"></div>
        </div>
        <nav class="navbar navbar-light justify-content-center" style="background-color: #95b5ac; margin-top: 40px">
            <ul class="navbar-nav">
                <li class="nav-item nav-link">YORUM YAP</li>
            </ul>
        </nav>

        <div class="row" style="margin-top:40px">

            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                 <div class="form-group">                   
                    <div class="row-lg-3">
                        <asp:Label ID="Label5" runat="server" Text="Ad Soyad" CssClass="form-text"></asp:Label>
                    </div>
                    <div class="row-lg-9">
                        <asp:TextBox ID="Txt_Gonderen" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group ">
                    <div class="row-lg-3">
                        <asp:Label ID="Label2" runat="server" Text="E-Posta" CssClass="form-text"></asp:Label>
                    </div>

                    <div class="row-lg-9">
                        <asp:TextBox ID="Txt_Mail" runat="server" CssClass="form-control"></asp:TextBox>
                        <small class="form-text text-muted">(Mail adresinizi hiçkimse ile paylaşmayacağız.) </small>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row-lg-3">
                        <asp:Label ID="Label4" runat="server" Text="Yorum" CssClass="form-text"></asp:Label>
                    </div>
                    <div class="row-lg-9">
                        <asp:TextBox ID="Txt_Mesaj" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-4"> </div>
            <div class="col-lg-4"><asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn btn-success btn-block rounded-pill" OnClick="Button1_Click" /></div>
                    <div class="col-lg-4"></div>
                </div>



            </div>
            <div class="col-lg-2"></div>
            

        </div>

    </div>
</asp:Content>

