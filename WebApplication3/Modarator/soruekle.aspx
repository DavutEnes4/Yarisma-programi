<%@ Page Title="" Language="C#" MasterPageFile="~/Modarator/mod.Master" AutoEventWireup="true" CodeBehind="soruekle.aspx.cs" Inherits="WebApplication3.Modarator.soruekle"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 300px;
        }
        .auto-style2 {
            width: 15%;
        }
        .auto-style3 {
            width: 18%;
            height: 40px;
        }
        .auto-style4 {
            height: 40px;
        }
    .auto-style5 {
        height: 40px;
        width: 1021px;
    }
    .auto-style6 {
        width: 1021px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Aciklama" runat="server" style="display: block; margin: 0px auto; text-align: center; font-size: 24px; padding-bottom: 20px; "  Text="SORU EKLEME EKRANI<br>Lütfen istenilen bilgileri giriniz"></asp:Label>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Soru </td>

            <td class="auto-style5">
                <asp:TextBox ID="SoruMetin" class="auto-style4" style="width: 90%;" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Soru kategorisi </td>

            <td class="auto-style6">
                <asp:DropDownList ID="Kategori" runat="server" class="auto-style4" width = "20%" DataSourceID="DataBaseCategory" DataTextField="Name" DataValueField="CategoryId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="DataBaseCategory" runat="server" ConnectionString="Data Source=JEXZA;Initial Catalog=Yarisma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Soru düzeyi </td>

            <td class="auto-style6">
                <asp:DropDownList ID="Duzey" runat="server" class="auto-style4" width = "20%" DataSourceID="DataBaseLevel" DataTextField="Name" DataValueField="LevelId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="DataBaseLevel" runat="server" ConnectionString="Data Source=JEXZA;Initial Catalog=Yarisma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Level]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Doğru cevap</td>

            <td class="auto-style6">
                <asp:TextBox ID="DogruCevap" runat="server" class="auto-style4" style="width: 90%;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Yanlış cevap 1</td>

            <td class="auto-style6">
                <asp:TextBox ID="YanlisCevap1" runat="server" class="auto-style4" style="width: 90%;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Yanlış cevap 2</td>

            <td class="auto-style6">
                <asp:TextBox ID="YanlisCevap2" runat="server" class="auto-style4" style="width: 90%;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Yanlış cevap 3</td>

            <td class="auto-style6">
                <asp:TextBox ID="YanlisCevap3" runat="server" class="auto-style4" style="width: 90%;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Meydan okuma sorusu olabilir mi</td>

            <td class="auto-style6">
                <asp:CheckBox ID="Tip" runat="server" Text="Evet"/>
            </td>
        </tr>
    </table>
    <div style="display: block; padding: 20px; margin: 0px auto; width: 50%; height: 100px; font-size:24px" >
        <asp:Button ID="Save" runat="server" style="display: inline-block; margin: 0px 5%; width: 35%; height: 50px; font-size: 20px; border-radius: 20px;" Text="Soruyu kaydet" OnClick="Save_Click" />
        <asp:Button ID="Exit" runat="server" style="display: inline-block; margin: 0px 5%; width: 35%; height: 50px; font-size: 20px; border-radius: 20px;" Text="Çıkış" OnClick="Exit_Click" />
    </div>
</asp:Content>
