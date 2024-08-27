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
public partial class dochome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a,docid;
    string imgpath1;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
        lbldoc.Text = Session["doc"].ToString();
        data();
        query = "select imgname,docid from docdet where username='" + lbldoc.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            imgpath1 = rd[0].ToString();
            docid = rd[1].ToString();
            lbldocid.Text = rd[1].ToString();
        }
        rd.Close();
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