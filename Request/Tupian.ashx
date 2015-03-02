<%@ WebHandler Language="C#" Class="Tupian" %>

using System;
using System.Web;

public class Tupian : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "imag/JPEG";
        string fullpath=HttpContext.Current.Server.MapPath("Penguins.jpg");
        using (System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(fullpath))
        {
            using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap))
            {
                if (context.Request.UrlReferrer == null)
                {
                    g.Clear(System.Drawing.Color.White);
                    g.DrawString("can not access the image directly", new System.Drawing.Font("宋体", 30), System.Drawing.Brushes.Red,0,0);
                }
                else if (context.Request.UrlReferrer.Host != "localhost")
                {
                    g.DrawString("can not access the image from other sites", new System.Drawing.Font("宋体", 30), System.Drawing.Brushes.Red, 0, 0);
                }
                g.DrawString("Your Ip address is: "+context.Request.UserHostAddress, new System.Drawing.Font("宋体", 30), System.Drawing.Brushes.Red, 0, 0);

                if (context.Request.UserHostAddress == "127.0.0.1")
                {
                    //实现屏蔽部分IP地址
                }
            }
            bitmap.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}