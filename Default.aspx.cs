﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = "0";
            Label2.Text = "0";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int temp = Convert.ToInt32(Label1.Text);
        temp++;
        Label1.Text = temp.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int temp = Convert.ToInt32(TextBox1.Text);
        temp++;
        TextBox1.Text = temp.ToString();
        TextBox1.Width = new Unit(TextBox1.Width.Value + 10);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("Value of Label2 is:" + Label2.Text);
        Label2.Text = "100";
        Response.Write("Value of Lable2 after assignment is:" + Label2.Text);
    }
}