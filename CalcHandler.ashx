<%@ WebHandler Language="C#" Class="CalcHandler" %>

using System;
using System.Web;

public class CalcHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";
        string value1 = context.Request["value1"];
        string value2 = context.Request["value2"];
        string result = "";
        string isPostBack=context.Request["isPostBack"];
        if (isPostBack == "true")
        {
            int temp = Convert.ToInt32(value1) + Convert.ToInt32(value2);
            result = temp.ToString();
        }
        else
        {
            value1 = "";
            value2 = "";
        }
        string filePath = context.Server.MapPath("Calculator.html");
        string content = System.IO.File.ReadAllText(filePath);
        content = content.Replace("@value1", value1);
        content = content.Replace("@value2", value2);
        content = content.Replace("@result", result);
        context.Response.Write(content);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}