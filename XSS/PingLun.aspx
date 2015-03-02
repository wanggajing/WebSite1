<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeFile="PingLun.aspx.cs" Inherits="XSS_PingLun" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Height="82px" TextMode="MultiLine" Width="187px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </div>
    </form>
</body>
</html>
