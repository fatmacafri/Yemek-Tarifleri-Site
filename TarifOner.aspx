<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="container">
       <br />
       
        <div class="row">           
            <div class="col-1"></div>
             <div class="col-10"> <br />
                 <div class="form-group">
                     <div class="row-3"><asp:Label ID="Label1" runat="server" Text="Tarif Ad" CssClass="=form-text"></asp:Label></div>
                     <div class="row-9"><asp:TextBox ID="TxtTarifAd" runat="server" CssClass="form-control" ></asp:TextBox></div>              
                </div>

                 <div class="form-group">
                     <div class="row-3"><asp:Label ID="Label2" runat="server" Text="Malzemeler" CssClass="=form-text"></asp:Label></div>
                     <div class="row-9"><asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="form-control" Height="75px" TextMode="MultiLine" ></asp:TextBox></div>              
                </div>

                 <div class="form-group">
                     <div class="row-3"><asp:Label ID="Label3" runat="server" Text="Yapılış" CssClass="=form-text"></asp:Label></div>
                     <div class="row-9"><asp:TextBox ID="TxtYapilis" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine" ></asp:TextBox></div>              
                </div>

                  <div class="form-group">
                     <div class="row-3"><asp:Label ID="Label7" runat="server" Text="Kategori"></asp:Label></div>
                     <div class="row-9">
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>   
                     </div>              
                </div>

                 <div class="form-group">
                     <div class="row-3"><asp:Label ID="Label4" runat="server" Text="Resim"></asp:Label></div>
                     <div class="row-9">
                         <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file" />
                     </div>              
                </div>

                 <div class="form-group">
                     <div class="row-3"><asp:Label ID="Label5" runat="server" Text="Tarif Öneren" CssClass="=form-text"></asp:Label></div>
                     <div class="row-9"><asp:TextBox ID="TxtTarifOneren" runat="server" CssClass="form-control" ></asp:TextBox></div>              
                </div>

                 <div class="form-group">
                     <div class="row-3"><asp:Label ID="Label6" runat="server" Text="Mail Adresi" CssClass="=form-text"></asp:Label></div>
                     <div class="row-9"><asp:TextBox ID="TxtMailAdresi" runat="server" CssClass="form-control" ></asp:TextBox></div>              
                </div>

                 <div class="form-group row">
                     <div class="col-4"></div>
                     <div class="col-4"><asp:Button ID="Button1" runat="server" Text="Tarif Öner" type="submit" class="btn btn-success btn-block rounded-pill" OnClick="Button1_Click" /></div>
                     <div class="col-4"></div>
                    </div>
            </div>
            
           
             <div class="col-2"></div>
        </div>
   
      </div>


</asp:Content>

