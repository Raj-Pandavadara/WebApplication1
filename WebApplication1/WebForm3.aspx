<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AlgebraicOperationsWebForm.Default" %>

<!DOCTYPE html>
<html>
<head>
    <title>Algebraic Operations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .result {
            margin-top: 15px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            color: #007bff;
        }
        .error {
            color: #ff0000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Algebraic Operations</h2>
        <form id="form1" runat="server">
            <label for="txtNum1">Enter First Number:</label>
            <asp:TextBox ID="txtNum1" runat="server" placeholder="Enter first number"></asp:TextBox>

            <label for="txtNum2">Enter Second Number:</label>
            <asp:TextBox ID="txtNum2" runat="server" placeholder="Enter second number"></asp:TextBox>

            <label for="ddlOperation">Select an Operation:</label>
            <asp:DropDownList ID="ddlOperation" runat="server">
                <asp:ListItem Value="Add" Text="Addition"></asp:ListItem>
                <asp:ListItem Value="Subtract" Text="Subtraction"></asp:ListItem>
                <asp:ListItem Value="Multiply" Text="Multiplication"></asp:ListItem>
                <asp:ListItem Value="Divide" Text="Division"></asp:ListItem>
            </asp:DropDownList>

            <button type="submit" runat="server" onserverclick="btnCalculate_Click">Calculate</button>

            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
            <br />
            <br />
            <label for="txtName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="22SOEIT11022-Pandavadara_Raj"></asp:Label>
            </label>
        </form>
    </div>
</body>
</html>
