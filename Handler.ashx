<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string name = context.Request["text1"];
        context.Response.ContentType = "text/html";
        string filePath = context.Server.MapPath("HtmlPage.html");
        string content = System.IO.File.ReadAllText(filePath);
        context.Response.Write(content);
        context.Response.Write("welcome " + name+ "</br>");
        if (string.IsNullOrEmpty(name))
        {
            context.Response.Write("enter directly");
        }
        else
        {
            context.Response.Write("enter through submission");
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}