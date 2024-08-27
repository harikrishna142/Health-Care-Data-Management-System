using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using UniversalFunctions;
using System.Web.Configuration;

public partial class labhome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a, agentid;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbllabuser.Text = Session["labassistant"].ToString();
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
       
        data();
        query = "select lasid from labassdet where uname='" + lbllabuser.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lbllabid.Text = rd[0].ToString();
        }
        rd.Close();
        con.Close();
    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
}