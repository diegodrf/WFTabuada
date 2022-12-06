<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TabuadaPage.aspx.cs" Inherits="WFTabuada.TabuadaPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 639px;
        }
        .auto-style2 {}
        .auto-style3 {
            width: 231px;
        }
        .auto-style4 {
            width: 144px;
        }
        .auto-style6 {
            width: 231px;
            height: 30px;
        }
        .auto-style7 {
            width: 144px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>Tabuada</h1>
            <asp:DropDownList ID="DdBaseNumber" runat="server" CssClass="auto-style2" Height="16px" Width="150px"></asp:DropDownList>
            <asp:Button ID="BtSubmitBaseNumber" runat="server" OnClick="BtSubmitBaseNumber_Click" Text="Selecionar valor" />
            <br />
            <asp:PlaceHolder ID="PhPlaceHolder" runat="server"></asp:PlaceHolder>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">Data de Nascimento</td>
                    <td class="auto-style4">Data atual</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Calendar ID="CalendBirthDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style4">
                        <asp:Calendar ID="CalendCurrentDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                    <td>
                        <asp:Button ID="SubmitLifeTime" runat="server" Height="42px" OnClick="SubmitLifeTime_Click" Text="Calcular" Width="120px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                </tr>
            </table>
            <asp:Label ID="LbResultMessage" runat="server"></asp:Label>
            <br />
            <br />
            <asp:MultiView ID="DefaultMultiview" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    <asp:Button ID="ActionFromView1ToView2" runat="server" OnClick="ActionFromView1ToView2_Click" Text="Ir para View 2" />
                    <br />
                    <asp:Literal ID="LoremIpsumSampler" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."></asp:Literal>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Button ID="ActionFromView2ToView1" runat="server" OnClick="ActionFromView2ToView1_Click" Text="Ir para View 1" />
                    <br />
                    <asp:Image ID="LoremIpsumImage" runat="server" ImageUrl="~/images/Lorem-Ipsum-alternatives-768x492.png" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
