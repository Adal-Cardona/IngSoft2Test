<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="IngSoft2Test.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calcular Ecuación - Test</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    text-align: center;
}

table {
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

input, button {
    padding: 10px;
    margin: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

button {
    background-color: #28a745;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #218838;
}

    </style>
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
