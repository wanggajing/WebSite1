<%@ Page Language="C#" AutoEventWireup="true" CodeFile="example2.aspx.cs" Inherits="WebPrinciple_example2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" OnClientClick="var value=document.getElementById('TextBox1').value; if(parseInt(value,10)>100) {alert('can not withdraw more than 100'); return false;}" runat="server" Text="withdraw" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
