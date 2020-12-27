<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="separator">
        <asp:Label ID="Label2" runat="server" Text="MESAJ GÖNDERENLER LİSTESİ" CssClass="text-center text-white font-italic font-weight-bold" Style="font-size: x-large"></asp:Label>
    </div>

    <div class="list-group">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <div class="list-group-item list-group-item-action d-flex align-items-center rounded-pill">
                    <div class="flex-fill">
                        <div class="font-weight-600">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </div>
                    </div>
                    <div>

                        <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>"><i class="fa fa-2x fa-edit "></i></a>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

