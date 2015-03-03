<%@ WebHandler Language="C#" Class="ShowData" %>

using System;
using System.Web;
using System.Data;

public class ShowData : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        using (System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(@"Data Source=.\SQLEXPRESS; AttachDbFilename=|DataDirectory|\Student.mdf;
            Integrated Security=True;User Instance=True"))
        {
            conn.Open();
            using (IDbCommand cmd = conn.CreateCommand())
            {
                cmd.CommandText = "select * from Table";
                using (IDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string username=reader.GetString(0);
                        string password = reader.GetString(1);
                        context.Response.Write(username);
                        context.Response.Write(password);
                        
                    }
                }
            }
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}