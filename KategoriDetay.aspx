<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-bottom: .75rem;
            color: #666666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   


    <div class="container" style="margin-top:40px">
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Vertical" RepeatColumns="3">
            <ItemTemplate>
                <div class="card-deck" style="margin:10px 5px">
                    <div class="card">
                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("YemekResim") %>' CssClass="card-img-top" />
                        <div class="card-body">
                            <h2 class="text-center"><a href='TarifDetay.aspx?Yemekid=<%#Eval("Yemekid") %>' style="text-decoration: none; color: black;">
                                <em>
                                    
                                <asp:Label ID="Label1" runat="server" CssClass="btn btn-outline-secondary rounded-pill" Text='<%# Eval("YemekAd")%>' ></asp:Label>                                  
                                </em>
                            </a>            
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>


</asp:Content>

