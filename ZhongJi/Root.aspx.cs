using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ZhongJi_Root : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<a href='" + VirtualPathUtility.ToAbsolute("~/a/b.html") + "'>ggggg</a>");
        Response.Write(Request.AppRelativeCurrentExecutionFilePath);
        Response.Write(Request.PhysicalPath);
    }
}