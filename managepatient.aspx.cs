using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient; 
public partial class managepatient : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; 
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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtpatid = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtpatname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtdob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txtgender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txtbgroup = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txtcity = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox txtstate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox txtpin = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        TextBox txtcountry = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
        TextBox txtpiden1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
        TextBox txtpiden2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11");
        TextBox txtphone = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12");
        TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13");
        TextBox txtuname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox14");
        TextBox txtpwd = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox15");
        string patid = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "update patdet set paname='" + txtpatname.Text + "',dob='" + txtdob.Text + "',gen='" + txtgender.Text + "',bgroup='" + txtbgroup.Text + "',city='" + txtcity.Text + "',state='" + txtstate.Text + "',pin='" + txtpin.Text + "',country='" + txtcountry.Text + "',piden1='" + txtpiden1.Text + "',piden2='" + txtpiden2.Text + "',phone='" + txtphone.Text + "',email='" + txtemail.Text + "',uname='" + txtuname.Text + "',pwd='" + txtpwd.Text + "' where patid='" + patid + "'";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        con.Close();

        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string patid = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "delete from patdet where patid='" + patid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        con.Close();
        data();
        query = "delete from treatment where pid='" + patid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        GridView1.DataBind();
    }
}