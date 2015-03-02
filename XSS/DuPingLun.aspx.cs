using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class XSS_DuPingLun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(System.IO.File.ReadAllText("D:/a.txt"));
        string s = System.IO.File.ReadAllText("D:/a.txt");
        Response.Write(HttpUtility.HtmlEncode(s));
    }
}