using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class friendsignup : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query;
    int aidd, id;
    protected void Page_Load(object sender, EventArgs e)
    {
        data();
        query = "select max(id) from friedndet";
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
            lblid.Text = "FRND" + aidd.ToString();
        }
        else
        {
            aidd = aidd + 1;
            lblid.Text = "FRND" + aidd.ToString();
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
        data();
        query = "insert into friedndet(fid,frname,address,phone,email,uname,pass,actor)values('" + lblid.Text + "','" + txtname.Text + "','" + txtaddress.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','Friend')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        
        classGeneral.ShowMessage("Friend Created Successfully");
        Response.Redirect("friendsignup.aspx");
    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select uname from friedndet where uname='" + txtusername.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            classGeneral.ShowMessage("Username Exists");
            Button1.Enabled = false;
        }
        else
        {
            Button1.Enabled = true;
        }
        rd.Close();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}