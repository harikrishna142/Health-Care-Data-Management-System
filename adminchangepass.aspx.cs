﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class adminchangepass : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "select pass from adminlogin where pass='" + txtold.Text + "' and uname='admin'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            data();
            query = "update adminlogin set pass='" + txtnew.Text + "' where pass='" + txtold.Text + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            classGeneral.ShowMessage("Password Updated Successfully");
        }
        else
        {
            classGeneral.ShowMessage("Invalid Old Password");
        }
        rd.Close();
        con.Close();

    }
}