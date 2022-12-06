<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WFTabuada.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/pages/TabuadaPage.aspx" Target="_self">Next Page</asp:HyperLink>
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/pages/TabuadaPage.aspx" Text="Button" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/pages/TabuadaPage.aspx">LinkButton</asp:LinkButton>
        </div>
    </form>
</body>
</html>
