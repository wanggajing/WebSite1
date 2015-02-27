<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example.aspx.cs" Inherits="WebPrinciple_Example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Delete" OnClientClick="return confirm('are you sure?')" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Alert from server" />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="AlertFromMessageBox" />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Place a File" />
    </div>
    </form>
</body>
</html>
