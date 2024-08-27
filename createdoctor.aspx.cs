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
public partial class createdoctor : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query;
    string destdir, filename, orgfilename, Destpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //txtdocid.Text = string.Empty;
            docid();
        }
    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength != 0)
        {
            destdir = Server.MapPath("./UserPhoto");
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            orgfilename = filename;
            Destpath = Path.Combine(destdir, filename);
            FileUpload1.PostedFile.SaveAs(Destpath);
        }


        data();
        query = "insert into docdet(docid,docname,specialin,email,mobile,username,pass,yrexp,hname1,hloc1,hname2,hloc2,hname3,hloc3,imgname,imgpath,actor) values('" + txtdocid.Text + "','" + txtdocname.Text + "','" + txtspecialise.SelectedItem + "','" + txtemail.Text + "','" + txtmobile.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + txtexp.Text + "','" + txthosname1.Text + "','" + txthosloc1.Text + "','" + txthosname2.Text + "','" + txthosloc2.Text + "','" + txthosname3.Text + "','" + txthosloc3.Text + "','" + orgfilename + "','" + Destpath + "','Doctor')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "insert into hospdet(hosname,hosloc,docid)values('" + txthosname1.Text + "','" + txthosloc1.Text + "','" + txtdocid.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        data();
        query = "insert into hospdet(hosname,hosloc,docid)values('" + txthosname2.Text + "','" + txthosloc2.Text + "','" + txtdocid.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        data();
        query = "insert into hospdet(hosname,hosloc,docid)values('" + txthosname3.Text + "','" + txthosloc3.Text + "','" + txtdocid.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        //data();
        //Response.Redirect("createdoctor.aspx");
        //txtdocid.Text = string.Empty;
        docid();
        Response.Redirect("createdoctor.aspx");
        //classGeneral.ClearControl(this);

    }

    int aidd, id;
    public void docid()
    {
        data();
        query = "select MAX(ID) from docdet";
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
            txtdocid.Text = "DOC" + aidd.ToString();
        }
        else
        {
            aidd += 1;
            txtdocid.Text = "DOC" + aidd.ToString();
        }
    }
    protected void txtdocid_TextChanged(object sender, EventArgs e)
    {
        //data();
        //query = "select docid from docdet where docid='" + txtdocid.Text + "'";
        //cmd = new SqlCommand(query, con);
        //SqlDataReader rd = cmd.ExecuteReader();
        //if (rd.Read())
        //{
        //    classGeneral.ShowMessage("Already exists");
        //}
        //else
        //{

        //}
        //rd.Close();
        //con.Close();

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select username from docdet where username='" + txtusername.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            classGeneral.ShowMessage("Username Already exists");
        }
        else
        {

        }
        rd.Close();
        con.Close();
    }
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a = randomnumber(11001, 99879);
        int b = randomnumber(111, 999);
        txtusername.Text = txtdocname.Text.Substring(0, 2) + b.ToString();
        txtpassword.Text = a.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("createdoctor.aspx");
    }
}