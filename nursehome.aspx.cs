using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nursehome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
        lblid.Text = Session["nurse"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}