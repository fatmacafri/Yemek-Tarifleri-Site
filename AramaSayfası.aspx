<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AramaSayfası.aspx.cs" Inherits="AramaSayfası" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="auto-style1" style="margin-top: 20px">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Vertical" RepeatColumns="2">
                <ItemTemplate>
                    <div class="card-deck" style="margin: 20px 10px">
                        <div class="card">
                            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("YemekResim") %>' CssClass="card-img-top" />
                            <div class="card-body">


                                <a href="TarifDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="btn btn-outline-secondary"></asp:Label></a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>

    </div>




</asp:Content>

