<%@ WebHandler Language="C#" Class="xiazai" %>

using System;
using System.Web;

public class xiazai : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "imag/JPEG";
        context.Response.AddHeader("Content-Disposition:attachment", "filename=Penguins.jpg");
        context.Response.WriteFile("Penguins.jpg");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}