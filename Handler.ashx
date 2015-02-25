<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string name = context.Request["text1"];
        string isPostBack = context.Request["isPostBack"];
        context.Response.ContentType = "text/html";
        string msg = "";
        
        if (isPostBack=="true")
        {
            context.Response.Write("enter through submission");
            msg=name+" Welcome";
        }
        else
        {
            context.Response.Write("enter directly");
            name="";
            msg="";
        }
        string filePath = context.Server.MapPath("HtmlPage.html");
        string content = System.IO.File.ReadAllText(filePath);
        content=content.Replace("@value",name);
        content=content.Replace("@msg",msg);
        context.Response.Write(content);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}