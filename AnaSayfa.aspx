<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
       

        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Karma", sans-serif;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container" style="margin-top:30px ">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <div id="carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel" data-slide-to="1"></li>
                        <li data-target="#carousel" data-slide-to="2"></li>
                        <li data-target="#carousel" data-slide-to="3"></li>
                        <li data-target="#carousel" data-slide-to="4"></li>
                        <li data-target="#carousel" data-slide-to="5"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active" style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/resim/pasta1.jpg" alt="First slide" Width="100%" /> 
                        </div>
                        <div class="carousel-item">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/resim/tatlı1.jpg" alt="Second slide" Width="100%"/> 
                        </div>
                        <div class="carousel-item">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/resim/icecek1.jpg" alt="Third slide" Width="100%"/> 
                        </div>
                        <div class="carousel-item">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/resim/et2.jpg" alt="Fourth slide" Width="100%"/> 
                        </div>
                        <div class="carousel-item">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/resim/sebze4.jpg" alt="Fifth slide" Width="100%"/>  
                        </div>
                        <div class="carousel-item">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/resim/corba1.jpg" alt="Sixth slide" Width="100%"/> 
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>
            
           <div class="col-3"></div>
            </div>
        
        </div>
         
</asp:Content>


