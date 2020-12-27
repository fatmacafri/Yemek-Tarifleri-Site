<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="separator">
        <asp:Label ID="Label1" runat="server" Text="HAKKIMIZDA DETAYLAR" CssClass="text-center text-white font-italic font-weight-bold" style="font-size: x-large"></asp:Label>
    </div>
    <asp:Panel ID="Panel2" runat="server">
        
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"  Height="300px" CssClass="form-control"></asp:TextBox>
               
                <br />
                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-success btn-block rounded-pill" Text="Güncelle" OnClick="Button3_Click"  />
                   
</asp:Panel>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

