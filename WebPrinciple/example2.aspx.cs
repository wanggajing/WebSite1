using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebPrinciple_example2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Label1.Text) < 100)
        {
            Label1.Text = "you have withdrawn " + TextBox1.Text;
        }
        else
        {
            Label1.Text = "can not withdraw more than 100";
        }
    }
}