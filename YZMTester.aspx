﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YZMTester.aspx.cs" Inherits="YZMTester" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="YZM.ashx" onclick="this.src='YZM.ashx'"/>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </div>
    </form>
</body>
</html>
