<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Session.aspx.cs" Inherits="Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SetSession" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="GetSession" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Increase" />
    
    </div>
    </form>
</body>
</html>
