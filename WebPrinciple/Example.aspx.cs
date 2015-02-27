using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPrinciple_Example : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "delete successfully " + DateTime.Now;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'>alert('You clicked me');</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        System.Windows.Forms.MessageBox.Show("gagagaga!!!");
        //用Cassini developer绑定公网IP地址，让其他人能访问
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        File.WriteAllText("c:/newFile.txt", "hahahahhahahaha");
    }
}