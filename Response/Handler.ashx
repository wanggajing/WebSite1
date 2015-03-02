<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        for (int i = 0; i < 20; i++)
        {
            System.Threading.Thread.Sleep(500);
            context.Response.Write("The " + i + "thread has finished execution <br/>");
           // context.Response.Flush();
            if (i == 10)
            {
                context.Response.Clear();
            }
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}