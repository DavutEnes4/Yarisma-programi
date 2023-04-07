<%@ Page Title="" Language="C#" MasterPageFile="~/Modarator/mod.Master" AutoEventWireup="true" CodeBehind="soruduzenle.aspx.cs" Inherits="WebApplication3.Modarator.soruduzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="FiltreSecin" style="display:inline-block; width: 20%; padding: 5px; margin: 20px 20px; border-radius: 20px;" runat="server">
        <asp:ListItem Value="0">Filtre seçiniz</asp:ListItem>
        <asp:ListItem Value="0">Yüklenme Tarihi</asp:ListItem>
        <asp:ListItem Value="2">Kategori</asp:ListItem>
        <asp:ListItem Value="3">Duzey</asp:ListItem>
        <asp:ListItem Value="4">Soru metni</asp:ListItem>
        <asp:ListItem Value="5">Doğru cevap</asp:ListItem>
        <asp:ListItem Value="6">Yanlis cevap</asp:ListItem>
        <asp:ListItem Value="7">Tip</asp:ListItem>
    </asp:DropDownList>
    <input id="AranacakMetin" type="text" style="display:inline-block; width: 60%; padding: 5px; margin: 20px 20px; border-radius: 20px;" />
    <asp:Button ID="ButonFiltrele" runat="server" style="display:inline-block; width: 150px; padding: 5px; margin: 20px 20px; border-radius: 20px;" Text="Ara" />
    &nbsp;<asp:ListView ID="ListView1" runat="server" style="height: 600px" DataKeyNames="Id" DataSourceID="DatabaseQuestion">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="UploadDateLabel" runat="server" Text='<%# Eval("UploadDate") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                </td>
                <td>
                    <asp:Label ID="LevelIdLabel" runat="server" Text='<%# Eval("LevelId") %>' />
                </td>
                <td>
                    <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                </td>
                <td>
                    <asp:Label ID="TReplyLabel" runat="server" Text='<%# Eval("TReply") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply1Label" runat="server" Text='<%# Eval("FReply1") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply2Label" runat="server" Text='<%# Eval("FReply2") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply3Label" runat="server" Text='<%# Eval("FReply3") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Eval("Type") %>' Enabled="false" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Güncelleştir" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="İptal" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UploadDateTextBox" runat="server" Text='<%# Bind("UploadDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LevelIdTextBox" runat="server" Text='<%# Bind("LevelId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="QuestionTextBox" runat="server" Text='<%# Bind("Question") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TReplyTextBox" runat="server" Text='<%# Bind("TReply") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FReply1TextBox" runat="server" Text='<%# Bind("FReply1") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FReply2TextBox" runat="server" Text='<%# Bind("FReply2") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FReply3TextBox" runat="server" Text='<%# Bind("FReply3") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Bind("Type") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="height: 400px; background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>Hiçbir veri döndürülmedi.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Ekle" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Temizle" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="UploadDateTextBox" runat="server" Text='<%# Bind("UploadDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LevelIdTextBox" runat="server" Text='<%# Bind("LevelId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="QuestionTextBox" runat="server" Text='<%# Bind("Question") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TReplyTextBox" runat="server" Text='<%# Bind("TReply") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FReply1TextBox" runat="server" Text='<%# Bind("FReply1") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FReply2TextBox" runat="server" Text='<%# Bind("FReply2") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FReply3TextBox" runat="server" Text='<%# Bind("FReply3") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Bind("Type") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="UploadDateLabel" runat="server" Text='<%# Eval("UploadDate") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                </td>
                <td>
                    <asp:Label ID="LevelIdLabel" runat="server" Text='<%# Eval("LevelId") %>' />
                </td>
                <td>
                    <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                </td>
                <td>
                    <asp:Label ID="TReplyLabel" runat="server" Text='<%# Eval("TReply") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply1Label" runat="server" Text='<%# Eval("FReply1") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply2Label" runat="server" Text='<%# Eval("FReply2") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply3Label" runat="server" Text='<%# Eval("FReply3") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Eval("Type") %>' Enabled="false" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="width: 100%; height: 30%">
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="widht:100% background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Id</th>
                                    <th runat="server">UploadDate</th>
                                    <th runat="server">CategoryId</th>
                                    <th runat="server">LevelId</th>
                                    <th runat="server">Question</th>
                                    <th runat="server">TReply</th>
                                    <th runat="server">FReply1</th>
                                    <th runat="server">FReply2</th>
                                    <th runat="server">FReply3</th>
                                    <th runat="server">Type</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="UploadDateLabel" runat="server" Text='<%# Eval("UploadDate") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                </td>
                <td>
                    <asp:Label ID="LevelIdLabel" runat="server" Text='<%# Eval("LevelId") %>' />
                </td>
                <td>
                    <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                </td>
                <td>
                    <asp:Label ID="TReplyLabel" runat="server" Text='<%# Eval("TReply") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply1Label" runat="server" Text='<%# Eval("FReply1") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply2Label" runat="server" Text='<%# Eval("FReply2") %>' />
                </td>
                <td>
                    <asp:Label ID="FReply3Label" runat="server" Text='<%# Eval("FReply3") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TypeCheckBox" runat="server" Checked='<%# Eval("Type") %>' Enabled="false" />
                </td>
            </tr>
        </SelectedItemTemplate>
        </asp:ListView>
    <asp:SqlDataSource ID="DatabaseQuestion" runat="server" ConnectionString="Data Source=JEXZA;Initial Catalog=Yarisma;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Question]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>