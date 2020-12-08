<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TarifDetay.aspx.cs" Inherits="TarifDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            text-align: center;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
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

        <nav class="navbar navbar-light justify-content-center" style="background-color: #95b5ac; border-top-style: ridge; border-bottom-style: ridge; border-top-width: thin; border-bottom-width: thin; border-top-color: #808080; border-bottom-color: #808080; margin-top: 40px">
            <ul class="navbar-nav">
                <li class="nav-item nav-link">YORUMLAR</li>
            </ul>
        </nav>

        <div class="row" style="margin-top: 40px">
           
           
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <div class="card-group" style="margin: 10px">
                            <div class="card">
                                <div class="card-header bg-transparent border-success text-success">
                                    <strong>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                    </strong>
                                </div>
                                <div class="card-body">
                                    <p class="card-text">
                                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("Yorumicerik") %>'></asp:Label>
                                    </p>
                                </div>
                                <p class="card-text">
                                    <small class="text-muted">
                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label></small>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            
            
        </div>
    </div>
</asp:Content>

