<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example3.aspx.cs" Inherits="WebPrinciple_Example3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text" id="password" /><input type="button" onclick="var password = document.getElementById('password').value;
            if(password=='111'){document.getElementById('div1').style.display=''}" value="OK" />
        <br />
        <br />
        <div id="div1" style="display:none"><a href="www.xx.xxx" >click to download</a></div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="www.xxx.xxx" Visible="False">click to download</asp:HyperLink>
    </div>
    </form>
</body>
</html>
