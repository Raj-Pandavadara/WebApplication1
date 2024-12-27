<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WelcomeApp.Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 400px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"], input[type="submit"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        .submit-button {
            width: 100%;
            border: none;
            padding: 10px;
            font-size: 16px;
            background-color: #007bff; /* New button color */
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
        .submit-button:hover {
            background-color: #0056b3; /* Hover effect */
        }
        .welcome-message {
            color: 007bff;
            font-size: 1.2em;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <label for="txtName">Enter your name :</label>
            <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name" Width="388px"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="submit-button" />
            <asp:Label ID="lblWelcome" runat="server" CssClass="welcome-message"></asp:Label>
            <label for="txtName">
            <asp:Label ID="Label1" runat="server" Text="22SOEIT11022-Pandavadara_Raj"></asp:Label>
            </label>
        </form>
    </div>
</body>
</html>
