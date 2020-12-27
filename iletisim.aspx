<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <br />
        <asp:Label ID="Label5" runat="server" Text="İLETİŞİM" CssClass="form-text text-center text-dark font-weight-bold"></asp:Label>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10" > <br />
                <div class="form-group ">
                    <div class="row-md-2"> <asp:Label ID="Label1" runat="server" Text="Ad Soyad" CssClass="form-text"></asp:Label></div>
                   <div class="row-md-10"> <asp:TextBox ID="Txt_Gonderen" runat="server" CssClass="form-control"></asp:TextBox></div>               
                </div>


                <div class="form-group">
                    <div class="row-md-2"><asp:Label ID="Label2" runat="server" Text="Mail Adresi" CssClass="form-text"></asp:Label> </div>
                    
                  <div class="row-md-10"><asp:TextBox ID="Txt_Mail" runat="server" CssClass="form-control"></asp:TextBox> 
                      <small class="form-text text-muted">Mail adresinizi hiçkimse ile paylaşmayacağız. </small>
                </div>
                </div>
                    


                <div class="form-group">
                   <div class="row-md-2"> <asp:Label ID="Label3" runat="server" Text="Konu" CssClass="form-text"></asp:Label> </div>
                   <div class="row-md-10"> <asp:TextBox ID="Txt_Baslik" runat="server" CssClass="form-control"></asp:TextBox></div>
                </div>


                <div class="form-group">
                 <div class="row-md-2">    <asp:Label ID="Label4" runat="server" Text="Mesaj" CssClass="form-text"></asp:Label></div>
                    <div class="row-md-10"> <asp:TextBox ID="Txt_Mesaj" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox></div>
                </div>


                <div class="form-group row">
                    <div class="col-4"></div>
                    <div class="col-4"><asp:Button ID="Button1" runat="server" Text="Gönder" type="submit" class="btn btn-success btn-block rounded-pill" OnClick="Button1_Click" /></div>
                    <div class="col-4"></div>
                    </div>
            </div>
            <div class="col-1"></div>
           
        </div>
  </div>







</asp:Content>

