<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="IngSoft2Test.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calcular Ecuación - Test</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Ecuación:
                    </td>
                    <td>
                        y = (a)x^2 + b(x) + c
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        x =
                    </td>
                    <td>
                        <asp:TextBox ID="txt_X" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btCalcular" runat="server" Text="Calcular"
                            OnClick="btCalcular_Click"
                            OnClientClick="return validarCampo();" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        y = 
                    </td>
                    <td>
                        <asp:TextBox ID="txtResultado" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script type="text/javascript">
        function validarCampo() {
            var campoX = document.getElementById("txt_X").value;
            var isNumero = false;

            if (isNaN(campoX)) {
                isNumero = false;
                alert("Por favor solo capture numeros");
            }
            else {
                isNumero = true;
            }

            return isNumero;
        }
    </script>
</body>
</html>
