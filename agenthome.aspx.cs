﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class agenthome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a, agentid;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
        lbldoc.Text = Session["agent"].ToString();
        data();
        query = "select aid from agentdet where uname='" + lbldoc.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lbldocid.Text = rd[0].ToString();
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