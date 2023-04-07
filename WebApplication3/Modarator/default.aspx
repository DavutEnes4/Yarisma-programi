<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication3.Modarator._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bilgi Yarışmaları login</title>
    
    <style>
         * 
         {
             margin: 0;
             padding: 0;
             border: 0;
         }
         .txt 
         {
             font-size: 24px;
             margin-top: 20px;
         }

         .button 
         {
             width: 80px;
             height: 25px;
             background-color: darkblue;
             color: cornsilk;
         }


    </style>
</head>
<body style="background-color: aquamarine;">
    <form id="form1" runat="server">
        <div style="background-color:violet;width: 550px; height: 450px; margin-top: 100px; margin-left: auto; margin-right: auto; margin-bottom: 0;">
            <div style="width: 550px; height: 20px; margin-top: 0px; margin-bottom: 20px; float: left; text-align: center">
                <p class="txt"><asp:Label ID="LoginText" runat="server" Text="Oturum açma bilgilerinizi giriniz"></asp:Label></p>
            </div>
            <div style="width: 550px; height: 100px; margin-top: 20px; float: left; text-align: center">
                <asp:TextBox ID="TextUserName" placeholder="Kulanıcı adı" runat="server" CssClass="txt" Height="50px" Width="182px"></asp:TextBox>
            </div>
            <div style="width: 550px; height: 100px; margin-top: 20px; float: left; text-align: center">
                <asp:TextBox ID="TextPassword" placeholder="Şifre" runat="server" CssClass="txt" Height="50px" Width="181px"></asp:TextBox>
            </div>
            <div style="width: 550px; height: 90px; margin-top: 20px; float: left; text-align: center">
                <asp:Button ID="Btn_login" runat="server" Text="Giriş" CssClass="button" OnClick="Btn_login_Click" />
            </div>
        </div>
    </form>
</body>
</html>
