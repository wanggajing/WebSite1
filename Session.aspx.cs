using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["value"] = "0";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["first"] = DateTime.Now;
        Session["second"] = 100;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button2.Text = Session["first"].ToString() + Session["second"];
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int temp=Convert.ToInt32(Session["value"]);
        temp++;
        Session["value"]=temp;
        Label1.Text = temp.ToString();
    }
}