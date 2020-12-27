<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10" style="margin-top: 40px">

                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <div class="card-title text-center">
                            <strong>
                                <asp:Label ID="Label1" runat="server"  Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong>
                        </div>
                        <div class="text-center">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("YemekResim") %>' Width="75%" />
                            <div class="card-body">

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <p class="card-text">
                                            <strong>Malzemeler:</strong><br />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                        </p>
                                    </li>
                                    <li class="list-group-item">
                                        <p class="card-text">
                                            <strong>Tarif:</strong><br />
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                        </p>
                                    </li>
                                    <li class="list-group-item">
                                        <p class="card-text">
                                            <small class="text-muted">
        Puan:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="card-text"></asp:Label>&nbsp;- EklenmeTarihi: 
        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="card-text"></asp:Label></small>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-1"></div>

        </div>
    </div>


</asp:Content>

