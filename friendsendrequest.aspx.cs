using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class friendsendrequest : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, frienduname, friendname, friendid;
    protected void Page_Load(object sender, EventArgs e)
    {
        frienduname = Session["friend"].ToString();
        data();
        query = "select fid,name from friedndet where uname='" + frienduname.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            friendid = rd[0].ToString();
            friendname = rd[1].ToString();
        }
        rd.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into docrequest(docid,patid,date,time,role,docname)values('" + friendid.ToString() + "','" + DropDownList1.SelectedItem + "','" + System.DateTime.Today.ToShortDateString() + "','" + System.DateTime.Now.ToShortTimeString() + "','Friend','" + friendname.ToString() + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        classGeneral.ShowMessage("Request Sent");
    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
}