<%@ WebHandler Language="C#" Class="YZM" %>

using System;
using System.Web;

public class YZM : IHttpHandler,System.Web.SessionState.IRequiresSessionState {

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "image/JPEG";
        using (System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(100, 50))
        {
            using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap))
            {
             /*   g.DrawString("Ahahaha", new System.Drawing.Font("宋体", 20), 
                    System.Drawing.Brushes.Red, new System.Drawing.PointF(0, 0));
                bitmap.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
              */
                Random ran = new Random();
                int code = ran.Next(1000,9999);
                string strCode = code.ToString();
                g.DrawString(strCode, new System.Drawing.Font("宋体", 20),
                    System.Drawing.Brushes.Red, new System.Drawing.PointF(0, 0));
                bitmap.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
                
                //save in session
                HttpContext.Current.Session["YZM"] = strCode;
            }
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}