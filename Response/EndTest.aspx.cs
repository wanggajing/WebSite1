using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Response_EndTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string q=Request["q"];
        if (q == "1")
        {
            Response.Write("one");
        }
        else if (q == "2")
        {
            Response.End();
        }
        else if (q == "3")
        {
            Server.Transfer("Hello.aspx");
            Server.Transfer("www.baidu.com");//不能访问
        }
        else if (string.IsNullOrEmpty(q))
        {
            Response.Write("please enter your question");
        }
        else
        {
            Response.Redirect("Hello.aspx");
            Response.Redirect("www.baidu.com");//可以访问
        }
    }
}