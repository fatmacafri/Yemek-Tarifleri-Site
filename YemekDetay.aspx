<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
            text-align: center;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="auto-style2">

                <strong>

                <br />

                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>


                </strong>


                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>

                        <div class="card-body" style="border-bottom-style: double; border-bottom-width: medium; border-bottom-color: #000000">
                            <h5 class="card-title"><asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label></h5> 
                            <p class="card-text"> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                            
                            </p>
                             <p class="card-text text-muted"> <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label></p>   
                        </div>
                       
                      


                    </ItemTemplate>
                </asp:DataList>
            </div>

            <div class="col-md-4" ></div>
        </div>
       
    </div>











</asp:Content>

