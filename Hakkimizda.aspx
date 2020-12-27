<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        
        .auto-style4 {
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            min-height: 1px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <div class="auto-style4">
                            <strong>
                                <h5 class="text-left" style="margin-top: 40px">STEINFIELD</h5>
                            </strong>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                            <br />
                            <br />

                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Logo/about.jpg" Width="100%" />
                            <p>&nbsp;</p>
                            <p>
                                Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
                              Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-md-4" style="margin-top: 40px">
                <div class="card">
                    <div class="list-group list-group-flush">
                        <div class="list-group-item list-group-item-action d-flex align-items-center text-dark text-center">
                            <div class="flex-fill pr-3">
                                <div class="font-weight-600">HAKKIMDA</div>                             
                            </div>
                            <%--<div>
                                <i class="fa fa-chevron-right fa-lg text-muted"></i>
                            </div>--%>
                        </div>
                    </div>
                    <div style="margin-top: 20px" class="text-center">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/Logo/profil.jpg" Width="50%" CssClass="card-img" />
                        <p class="card-text" style="margin-top: 10px; text-align:center">Fatma CAFRI<br />Çukurova Üniversitesi Bilgisayar Mühendisliği Mezunu</p>
                        <nav class="navbar navbar-expand navbar-light justify-content-center">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link fa fa-linkedin" href="#"></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link fa fa-medium" href="#"></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link fa fa-github" href="#"></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <div class="card" style="margin-top: 30px">
                    <div class="list-group list-group-flush">
                        <div class="list-group-item list-group-item-action d-flex align-items-center text-dark text-center">
                            <div class="flex-fill pr-3">
                                <div class="font-weight-600">RESİMLER</div>                             
                            </div>
                            <%--<div>
                                <i class="fa fa-chevron-right fa-lg text-muted"></i>
                            </div>--%>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="widget-img-list text-center">
                            <div class="widget-img-list-item" ><a href="#"><span class="img" style="background-image: url(~/Çorbalar/1.jpg)"></span></a></div>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Logo/9.jpg" Width="30%" CssClass="widget-img-list-item float mb-1"/>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Logo/2.jpg" Width="30%" CssClass="mb-1"/>
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Logo/8.jpg" Width="30%" CssClass="mb-1"/>
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Logo/4.jpg" Width="30%" CssClass="mb-1"/>
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/Logo/5.jpg" Width="30%" CssClass="mb-1"/>
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/Logo/6.jpg" Width="30%" CssClass="mb-1"/>
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Logo/7.jpg" Width="30%" CssClass="mb-1"/>
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Logo/3.jpg" Width="30%" CssClass="mb-1"/>
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/Logo/1.jpg" Width="30%" CssClass="mb-1"/>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
</asp:Content>

