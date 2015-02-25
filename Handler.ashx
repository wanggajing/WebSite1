<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string name = context.Request["text1"];
        context.Response.ContentType = "text/html";
        context.Response.Write(@"<form action='Handler.ashx'>
        Name:<input type='text' name='text1' value='"+name+@"'/><input type='submit' value='submit' />
    </form>");        
        context.Response.Write("welcome " + name);       
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}