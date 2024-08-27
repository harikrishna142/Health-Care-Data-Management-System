using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
using System.IO;
using System.Data.SqlClient; using UniversalFunctions;
public partial class doccreatpat : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a;
    string destdir, filename, orgfilename, Destpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //txtpatid.Text = string.Empty;
            patid();
        }
    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
    protected void txtpatid_TextChanged(object sender, EventArgs e)
    {
        data();
        //query = "select patid from patdet where patid='" + txtpatid.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            classGeneral.ShowMessage("Patient Id Exists");
            Button2.Enabled = false;
        }
        else
        {
            Button2.Enabled = true;
        }
        rd.Close();
        con.Close();
    }
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = randomnumber(11001, 99879);
        int b = randomnumber(111, 999);
        txtusername.Text = txtname.Text.Substring(0, 2) + b.ToString();
        Ttxtpasword.Text = a.ToString();


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        data();
        query = "select paname,dob,fname from patdet where paname='"+txtname.Text+"' and dob='"+txtdob.Text+"' and fname='"+txtfatname.Text+"'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            Label20.Text = "Patient Details Already Registered";
        }
        else
        {

            if (FileUpload1.PostedFile.ContentLength != 0)
            {
                destdir = Server.MapPath("./UserPhoto");
                filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                orgfilename = filename;
                Destpath = Path.Combine(destdir, filename);
                FileUpload1.PostedFile.SaveAs(Destpath);
            }

            if (RadioButton1.Checked == true)
            {
                a = "male";
            }
            else
            {
                a = "female";
            }
            data();
            query = "insert into patdet(patid,paname,dob,gen,bgroup,fname,st1,st2,city,state,pin,country,piden1,piden2,uname,pwd,imgname,imgpath,phone,email,actor)values('" + lblpatid.Text + "','" + txtname.Text + "','" + txtdob.Text + "','" + a.ToString() + "','" + ddlblgroup.SelectedItem.Text + "','" + txtfatname.Text + "','" + txtst1.Text + "','" + txtst2.Text + "','" + ddlcity.SelectedItem.Text + "','" + ddlstate.SelectedItem.Text + "','" + txtpin.Text + "','" + ddlcountry.SelectedItem.Text + "','" + txtpersonl1.Text + "','" + txtpersonal2.Text + "','" + txtusername.Text + "','" + Ttxtpasword.Text + "','" + orgfilename + "','" + Destpath + "','" + txtphone.Text + "','" + txtemail.Text.ToLower() + "','Patient')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            classGeneral.ShowMessage("Patient Created");
            //Response.Redirect("doccreatpat.aspx");
            classGeneral.ClearControl(this);
            patid();
        }
    }
    int aidd, id;
    public void patid()
    {
        data();
        query = "select max(id) from patdet";
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
            lblpatid.Text = "PAT" + aidd.ToString();
        }
        else
        {
            aidd = aidd + 1;
            lblpatid.Text = "PAT" + aidd.ToString();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("doccreatepat.aspx");
    }
}