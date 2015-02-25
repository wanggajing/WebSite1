<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string value = context.Request["value"];
        string isPostBack = context.Request["isPostBack"];
        context.Response.ContentType = "text/html";
        
        if (isPostBack=="true")
        {
            int temp = Convert.ToInt32(value);
            temp++;
            value = temp.ToString();
        }
        else
        {
            value = "0";
        }
        string filePath = context.Server.MapPath("HtmlPage.html");
        string content = System.IO.File.ReadAllText(filePath);
        content=content.Replace("@value",value);
        context.Response.Write(content);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}