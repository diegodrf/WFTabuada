﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TabuadaPage.aspx.cs" Inherits="WFTabuada.TabuadaPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 277px;
        }
        .auto-style2 {}
        .auto-style3 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>Tabuada</h1>
            <asp:DropDownList ID="DdBaseNumber" runat="server" CssClass="auto-style2" Height="16px" Width="150px"></asp:DropDownList>
            <asp:Button ID="BtSubmitBaseNumber" runat="server" OnClick="BtSubmitBaseNumber_Click" Text="Button" />
            <asp:ListBox ID="LbResult" runat="server" CssClass="auto-style3" Height="152px" Width="141px"></asp:ListBox>
        </div>
    </form>
</body>
</html>