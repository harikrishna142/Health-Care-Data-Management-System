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
public partial class createmedical : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a;
    string destdir, filename, orgfilename, Destpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblmedid.Text = string.Empty;
            Medid();
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string docid = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label1")).Text;
        data();
        query = "delete from meddet where medid='" + docid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //TextBox txtdocid = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtdocname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtspecial = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
    //    TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
    //    TextBox txtmobile = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
      //  TextBox txtusername = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        //TextBox txtpassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox txtexp = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        TextBox txthosname1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
        TextBox txthosloc1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
        TextBox txthosname2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11");
        TextBox txthosloc2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12");
        TextBox txthosname3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13");
        TextBox txthosloc3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox14");
        string docid = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label1")).Text;
        data();
        query = "update meddet set shopname='" + txtdocname.Text + "',street1='" + txtspecial.Text + "',email='" + txtexp.Text + "',phone='" + txthosname1.Text + "',uname='" + txthosloc1.Text + "',pwd='" + txthosname2.Text + "',actor='" + txthosloc2.Text + "' where medid='" + docid + "'";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        GridView1.DataBind();
        GridView1.EditIndex = -1;
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
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into meddet(medid,shopname,street1,email,phone,uname,pwd,actor)values('" + lblmedid.Text + "','" + txtshopname.Text + "','" + txtstreet1.Text + "','" + txtemail.Text.ToLower() + "','" + txtmobile.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','Medical')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        classGeneral.ShowMessage("Medical Shop Created");
        Response.Redirect("createmedical.aspx");
        Medid();
    }

    int aidd, id;
    public void Medid()
    {
        data();
        query = "select max(id) from meddet";
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
            lblmedid.Text = "MED" + aidd.ToString();
        }
        else
        {
            aidd = aidd + 1;
            lblmedid.Text = "MED" + aidd.ToString();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a = randomnumber(11001, 99879);
        int b = randomnumber(111, 999);
        txtusername.Text = txtshopname.Text.Substring(0, 2) + b.ToString();
        txtpassword.Text = a.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("createmedical.aspx");
    }
}