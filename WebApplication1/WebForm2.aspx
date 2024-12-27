<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TemperatureConversion.aspx.cs" Inherits="WebApplication1.TemperatureConversion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature Conversion</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 400px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .convert-button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

        .convert-button:hover {
            background-color: #0056b3;
        }

        .result {
            font-size: 1.2em;
            color: #333;
            margin-top: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Temperature Conversion</h2>
        <form id="form1" runat="server">
            <asp:Label ID="lblEnterValue" runat="server" Text="Enter Temperature:" />
            <asp:TextBox ID="txtTemperature" runat="server" placeholder="Enter value"></asp:TextBox>
            <asp:Label ID="lblSelectUnit" runat="server" Text="Select Unit:" />
            <asp:DropDownList ID="ddlUnit" runat="server">
                <asp:ListItem Text="Celsius to Fahrenheit" Value="CtoF"></asp:ListItem>
                <asp:ListItem Text="Fahrenheit to Celsius" Value="FtoC"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnConvert" runat="server" CssClass="convert-button" Text="Convert" OnClick="btnConvert_Click" />
            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
            <br />
            <label for="txtName">
            <asp:Label ID="Label1" runat="server" Text="22SOEIT11022-Pandavadara_Raj"></asp:Label>
            </label>
        </form>
    </div>
</body>
</html>
