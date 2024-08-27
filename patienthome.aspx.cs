using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
using System.IO;
public partial class patienthome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
      lblpat.Text = Session["pat"].ToString();
        data();
        query = "select imgname from patdet where uname='" + lblpat.Text + "'";
        cmd = new SqlCommand(query, con);
        string imgpath1 = Convert.ToString(cmd.ExecuteScalar().ToString());
        con.Close();
        Image1.ImageUrl = (@"~\UserPhoto\" + imgpath1);
    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
}