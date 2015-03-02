<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DuPingLun.aspx.cs" Inherits="XSS_DuPingLun" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="&lt;a href=&quot;sss&quot;&gt;haha&lt;/a&gt;"></asp:Label>
        <br />
        <asp:Literal ID="Literal1" runat="server" Mode="Encode" Text="&lt;a href=&quot;sss&quot;&gt;haha&lt;/a&gt;"></asp:Literal>
    </div>
    </form>
</body>
</html>
