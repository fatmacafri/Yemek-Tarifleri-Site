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
                        <div class="text-center">
                            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("YemekResim") %>' Width="400px" />
                            <div class="card-body">
                                <div class="card-title">
                                    <strong>
                                        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    </strong>
                                </div>
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
                                            <medium class="text-muted">
        Puan:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>&nbsp;- EklenmeTarihi: 
        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label></medium>
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

