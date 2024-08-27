using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class manageprofile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a,gen;
    protected void Page_Load(object sender, EventArgs e)
    {

        a = Session["pat"].ToString();
        if (!Page.IsPostBack)
        {
            data();
            query = "select * from patdet where uname='" + a.ToString() + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                txtpatid.Text = rd[1].ToString();
                txtname.Text = rd[2].ToString();
                txtdob.Text = rd[3].ToString();
                gen = rd[4].ToString();
                if (gen == "male")
                {
                    RadioButton1.Checked = true;
                    RadioButton2.Checked = false;
                }
                else
                {
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = true;
                }
                txtbgroup.Text = rd[5].ToString();
                txtfatname.Text = rd[6].ToString();
                txtst1.Text = rd[7].ToString();
                txtst2.Text = rd[8].ToString();
                txtcity.Text = rd[9].ToString();
                txtstate.Text = rd[10].ToString();
                txtpin.Text = rd[11].ToString();
                txtcountry.Text = rd[12].ToString();
                txtpersonl1.Text = rd[13].ToString();
                txtpersonal2.Text = rd[14].ToString();
                txtphone.Text = rd[19].ToString();
                txtemail.Text = rd[20].ToString();
            }
            rd.Close();
            con.Close();
        }
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
        a = Session["pat"].ToString();
     
            data();
            query = "update patdet set st1='" + txtst1.Text + "',st2='" + txtst2.Text + "',city='" + txtcity.Text + "',state='" + txtstate.Text + "',pin='" + txtpin.Text + "',country='" + txtcountry.Text + "',phone='" + txtphone.Text + "',email='" + txtemail.Text + "' where uname='" + a.ToString() + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            classGeneral.ShowMessage("Profile Updated");
       

    }
}