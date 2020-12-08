<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="container">
        <div class="row">
            
            <div class="col-2"></div>
             <div class="col-8"> <br />
                 <div class="form-group row">
                     <div class="col-3"><asp:Label ID="Label1" runat="server" Text="Tarif Ad"></asp:Label></div>
                     <div class="col-9"><asp:TextBox ID="TxtTarifAd" runat="server" CssClass="form-control" ></asp:TextBox></div>              
                </div>

                 <div class="form-group row">
                     <div class="col-3"><asp:Label ID="Label2" runat="server" Text="Malzemeler"></asp:Label></div>
                     <div class="col-9"><asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="form-control" Height="75px" TextMode="MultiLine" ></asp:TextBox></div>              
                </div>

                 <div class="form-group row">
                     <div class="col-3"><asp:Label ID="Label3" runat="server" Text="Yapılış"></asp:Label></div>
                     <div class="col-9"><asp:TextBox ID="TxtYapilis" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine" ></asp:TextBox></div>              
                </div>

                 <div class="form-group row">
                     <div class="col-3"><asp:Label ID="Label4" runat="server" Text="Resim"></asp:Label></div>
                     <div class="col-9">
                         <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file" />
                     </div>              
                </div>

                 <div class="form-group row">
                     <div class="col-3"><asp:Label ID="Label5" runat="server" Text="Tarif Öneren"></asp:Label></div>
                     <div class="col-9"><asp:TextBox ID="TxtTarifOneren" runat="server" CssClass="form-control" ></asp:TextBox></div>              
                </div>

                 <div class="form-group row">
                     <div class="col-3"><asp:Label ID="Label6" runat="server" Text="Mail Adresi"></asp:Label></div>
                     <div class="col-9"><asp:TextBox ID="TxtMailAdresi" runat="server" CssClass="form-control" ></asp:TextBox></div>              
                </div>

                 <div class="text-center">
                    <asp:Button ID="Button1" runat="server" Text="Tarif Öner" type="submit" class="btn btn-success" OnClick="Button1_Click" /></div>
            </div>
            
             </div>
             <div class="col-2">
                 <br />
        </div>
        </div>
    </div>

</div>

</asp:Content>

