using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class changepass : System.Web.UI.Page
{
     SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query,a;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["doc"].ToString();
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
        query = "select pass from docdet where username='" + a.ToString() + "' and pass='" + txtold.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            data();
            query = "update docdet set pass='" + txtnew.Text + "' where pass='" + txtold.Text + "' and username='" + a.ToString() + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            classGeneral.ShowMessage("Password Updated");
        }
        else
        {
            classGeneral.ShowMessage("Invalid old password");
        }
        rd.Close();
        con.Close();
    }
}