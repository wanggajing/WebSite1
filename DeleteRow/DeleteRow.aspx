<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteRow.aspx.cs" Inherits="DeleteRow_DeleteRow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <input type="hidden" name="Name" id="Name" />
    <div>
        <table>
            <tr><td>Name</td><td>Age</td><td>Operation</td></tr>
            <tr><td>WuKe</td><td>20</td><td><a href="DeleteRow.aspx?Name=WuKe">Delete</a><input type="button" value="Delete" 
                onclick="document.getElementById('Name').value = 'WuKe'; document.getElementById('form1').submit();"/>
                <a href="javascript:document.getElementById('Name').value = 'WuKe'; document.getElementById('form1').submit();">submit</a>
                                        </td></tr>
            <tr><td>WangGa</td><td>22</td><td><a href="DeleteRow.aspx?Name=WangGa">Delete</a></td></tr>
        </table>
    </div>
    </form>
</body>
</html>
