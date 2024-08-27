using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient; 
using UniversalFunctions;
public partial class managedoctor : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    String query;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView1.DataBind();
        }
    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string docid = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "delete from docdet where docid='" + docid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtdocid = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtdocname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtspecial = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txtmobile = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txtusername = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox txtpassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox txtexp = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        TextBox txthosname1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
        TextBox txthosloc1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
        TextBox txthosname2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11");
        TextBox txthosloc2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12");
        TextBox txthosname3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13");
        TextBox txthosloc3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox14");
        string docid=((Label)GridView1.Rows[e.RowIndex].FindControl("Label1")).Text;
        data();
        query = "update docdet set docname='" + txtdocname.Text + "',specialin='" + txtspecial.Text + "',email='" + txtemail.Text + "',mobile='" + txtmobile.Text + "',username='" + txtusername.Text + "',pass='" + txtpassword.Text + "',yrexp='" + txtexp.Text + "',hname1='" + txthosname1.Text + "',hloc1='" + txthosloc1.Text + "',hname2='" + txthosname2.Text + "',hloc2='" + txthosloc2.Text + "',hname3='" + txthosname3.Text + "',hloc3='" + txthosloc3.Text + "' where docid='" + docid + "'";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        GridView1.DataBind();
        GridView1.EditIndex = -1;
    }
}