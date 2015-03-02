<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Root.aspx.cs" Inherits="ZhongJi_Root" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="/sdfsdf">hhh</a>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/XSS/ShowMsg.aspx">HyperLink</asp:HyperLink>
    </div>
    </form>
</body>
</html>
