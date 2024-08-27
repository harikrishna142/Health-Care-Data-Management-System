using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using UniversalFunctions;
using System.Web.Configuration;
//using System.Windows.Forms;
using System.IO;
public partial class createlabassistant : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a; ClassGeneral classGeneral = new ClassGeneral();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblnurseid.Text = string.Empty;
            Medid();
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
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    } int aidd, id;
    public void Medid()
    {
        data();
        query = "select max(id) from labassdet";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {

            if (rd.IsDBNull(0))
            {
                aidd = 0;
            }
            else
            {
                aidd = Convert.ToInt32(rd[0].ToString());
            }
        }
        rd.Close();
        con.Close();
        if (aidd == 0)
        {

            aidd = 1;
            lblnurseid.Text = "LAB" + aidd.ToString();
        }
        else
        {
            aidd = aidd + 1;
            lblnurseid.Text = "LAB" + aidd.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            a = "male";
        }
        else
        {
            a = "female";
        }
        data();
        query = "insert into labassdet(lasid,lasname,age,gender,yrexp,phno,email,uname,pwd,actor)values('" + lblnurseid.Text + "','" + txtname.Text + "','" + txtage.Text + "','" + a.ToString() + "','" + txtyrexp.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','Lab assistant')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        classGeneral.ShowMessage("Lab assistant Created");
        Response.Redirect("createlabassistant.aspx");
        Medid();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a = randomnumber(11001, 99879);
        int b = randomnumber(111, 999);
        txtusername.Text = txtname.Text.Substring(0, 2) + b.ToString();
        txtpassword.Text = a.ToString();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string docid = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label9")).Text;
        data();
        query = "delete from labassdet where lasid='" + docid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox gtxtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox gtxtage = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox gtxtgender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox gtxtyrexp = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox gtxtphno = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox gtxtemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox gtxtusername = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox gtxtpwd = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        string docid = (GridView1.DataKeys[e.RowIndex].Values[0].ToString());
        data();
        query = "update labassdet set lasname='" + gtxtname.Text + "',age='" + gtxtage.Text + "',gender='" + gtxtgender.Text + "',yrexp='" + gtxtyrexp.Text + "',phno='" + gtxtphno.Text + "',email='" + gtxtemail.Text + "',uname='" + gtxtusername.Text + "',pwd='" + gtxtpwd.Text + "' where lasid='" + docid + "'";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        con.Close();
        GridView1.DataBind();
    }
}