<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="separator">
        <asp:Label ID="Label1" runat="server" Text="ONAYLI TARİFLER" CssClass="text-center text-white font-italic font-weight-bold" style="font-size: x-large"></asp:Label>
    </div>
    
    <div class="list-group">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <div class="list-group-item list-group-item-action d-flex align-items-center rounded-pill">
                    <div class="flex-fill">
                        <div class="font-weight-600">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>' CssClass="form-text"></asp:Label>
                        </div>
                    </div>
                    <div>
                        <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>"><i class="fa fa-2x fa-edit "></i></a>
            </ItemTemplate>
        </asp:DataList>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div class="separator">
        <asp:Label ID="Label3" runat="server" Text="ONAYSIZ TARİFLER" CssClass="text-center text-white font-italic font-weight-bold" style="font-size: x-large"></asp:Label>
    </div>

     <div class="list-group">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="list-group-item list-group-item-action d-flex align-items-center rounded-pill">
                    <div class="flex-fill">
                        <div class="font-weight-600">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TarifAd") %>' CssClass="form-text"></asp:Label>
                        </div>
                    </div>
                    <div>
                        <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>"><i class="fa fa-2x fa-edit "></i></a>
            </ItemTemplate>
        </asp:DataList>
    </div>


















</asp:Content>

