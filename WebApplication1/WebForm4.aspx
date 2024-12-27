<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AutoPostBackDemo.Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AutoPostBack Demo</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 450px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 30px;
            color: #333;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 8px;
            color: #555;
            display: block;
        }

        select, input[type="text"], input[type="checkbox"] {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            margin-bottom: 18px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            background-color: #f9f9f9;
            font-size: 16px;
        }

        select:focus, input[type="text"]:focus {
            outline: none;
            border-color: #007bff;
            background-color: #e9f1ff;
        }

        .checkbox-label {
            font-size: 16px;
            color: #555;
            display: inline-block;
            margin-top: 10px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        .result {
            margin-top: 20px;
            background-color: #f1f1f1;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            border-radius: 8px;
            color: #333;
            border: 1px solid #ddd;
        }

        .result span {
            font-weight: normal;
            color: #007bff;
        }

        .error {
            color: #ff0000;
            font-weight: normal;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>AutoPostBack Demo</h2>
        <form id="form1" runat="server">
            <label for="ddlColors">Select a Color:</label>
            <asp:DropDownList ID="ddlColors" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlColors_SelectedIndexChanged">
                <asp:ListItem Value="Red" Text="Red"></asp:ListItem>
                <asp:ListItem Value="Green" Text="Green"></asp:ListItem>
                <asp:ListItem Value="Blue" Text="Blue"></asp:ListItem>
            </asp:DropDownList>

            <label for="txtInput">Enter Text:</label>
            <asp:TextBox ID="txtInput" runat="server" AutoPostBack="true" OnTextChanged="txtInput_TextChanged"></asp:TextBox>

            <label for="chkAgree" class="checkbox-label">
                <asp:CheckBox ID="chkAgree" runat="server" AutoPostBack="true" OnCheckedChanged="chkAgree_CheckedChanged" />
                I Agree
            </label>

            <button type="submit" runat="server" style="display: none;"></button> <!-- Hidden button to submit the form -->

            <div class="result">
                <asp:Label ID="lblResult" runat="server" Text="Your results will appear here"></asp:Label>
            </div>
            <lebel>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 22SOEIT11022-Pandavadara_Raj</lebel>
        </form>
    </div>

</body>
</html>
