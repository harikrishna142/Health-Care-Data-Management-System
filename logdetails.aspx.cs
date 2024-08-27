using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient; using UniversalFunctions;
public partial class logdetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a;
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid1();
        fillgrid2();
        fillgrid3();
        fillgrid4();
        fillgrid5();
        fillgrid6();
        fillgrid7();
    }
    public void fillgrid1()
    {
        data();
        query = "SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = 'Medical')";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }
    public void fillgrid2()
    {
        data();
        query = "SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = 'Agent')";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();


    }
    public void fillgrid3()
    {
        data();
        query = "SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = 'Nurse')";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();


    }
    public void fillgrid4()
    {
        data();
        query = "SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = 'Doctor')";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView4.DataSource = ds;
        GridView4.DataBind();


    }
    public void fillgrid5()
    {
        data();
        query = "SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = 'Patient')";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView5.DataSource = ds;
        GridView5.DataBind();


    }
    public void fillgrid6()
    {
        data();
        query = "SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = 'Lab Assistant')";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView6.DataSource = ds;
        GridView6.DataBind();


    }
    public void fillgrid7()
    {
        data();
        query = "SELECT [uname], [logdate], [logtime], [actor] FROM [logdetails] WHERE ([actor] = 'Receptionist')";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView7.DataSource = ds;
        GridView7.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "delete from logdetails";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("logdetails.aspx");
    }
}