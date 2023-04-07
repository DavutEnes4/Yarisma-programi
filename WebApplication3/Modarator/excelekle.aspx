<%@ Page Title="" Language="C#" MasterPageFile="~/Modarator/mod.Master" AutoEventWireup="true" CodeBehind="excelekle.aspx.cs" Inherits="WebApplication3.Modarator.excelekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:FileUpload ID="ExcelAl" style="width:100%; padding: 5px; margin-top:80%" runat="server" />
    <asp:Button ID="dowland" style="display:block; width: 100%; padding: 5px; margin: 50px 0px; border-radius: 20px;" runat="server" Text="Taslağı indir" OnClick="ExcelDownload" />
    <asp:Button ID="view" style="display:block; width: 100%; padding: 5px; margin: 50px 0px; border-radius: 20px;" runat="server" Text="Görüntüle" />
    <asp:Button ID="save" style="display:block; width: 100%; padding: 5px; margin: 50px 0px; border-radius: 20px;" runat="server" Text="Kaydet" OnClick="SaveClick" />
    <asp:Button ID="exit" style="display:block; width: 100%; padding: 5px; margin: 50px 0px; border-radius: 20px;" runat="server" Text="Çık"  OnClick="ExitClick"/>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Label ID="Aciklama" runat="server" style="display: block; padding: 20px; margin: 0px auto; text-align: center; font-size: 32px; border-radius: 20px;" Text="EXCEL GÖRÜNTELEME EKRANI"></asp:Label>
    <asp:GridView ID="dataQuestion" runat="server">
    </asp:GridView>
</asp:Content>

