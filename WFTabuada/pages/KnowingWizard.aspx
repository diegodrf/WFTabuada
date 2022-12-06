<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KnowingWizard.aspx.cs" Inherits="WFTabuada.pages.KnowingWizard" %>

<%@ Register src="../WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
        <br />
        <asp:Wizard ID="Wizard1" runat="server" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="417px" StartNextButtonText="Proximo" Width="605px">
            <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
            <WizardSteps>
                <asp:WizardStep ID="BasicData" runat="server" title="Dados basicos">
                    Nome<br />
                    <asp:TextBox ID="tbName" runat="server" Height="16px" Width="314px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqName" runat="server" BackColor="#FFFFCC" ControlToValidate="tbName" ErrorMessage="Nome obrigatorio" Font-Names="Ink Free" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:WizardStep>
                <asp:WizardStep ID="Address" runat="server" title="Endereco">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        <div>
        </div>
    </form>
</body>
</html>
