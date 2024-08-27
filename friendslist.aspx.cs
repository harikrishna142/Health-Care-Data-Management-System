using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
using System.Data;
using System.Text;
using System.Security.Cryptography;
using System.IO;
public partial class friendslist : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, uname, phone, email;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            fillgrid();
        }
    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        data();
        query = "select uname,phone,email from friedndet where uname like'%" + txtfrndid.Text + "' ";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }


    public void fillgrid()
    {
        data();
        //query = "select uname,phone,email from friedndet";// where (LEFT(uname,255) not in (select uname from friendslist where (status='Yes') and (patusername='"+Session["pat"].ToString()+"')))";
        query = "select uname,phone,email from friedndet where (LEFT(uname,255) not in (select (LEFT(uname,255))as username from friendslist where (status='Yes') and (friedndet.uname=friendslist.frndusername) and (patusername='" + Session["pat"].ToString() + "')))";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    private string encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


        uname = GridView1.SelectedRow.Cells[0].Text.ToString();
        //phone = GridView1.SelectedRow.Cells[1].Text.ToString();
        //email = GridView1.SelectedRow.Cells[2].Text.ToString();
        data();
        query = "insert into friendslist(patusername,frndusername,status) values('" + Session["pat"].ToString() + "','" + uname.ToString() + "','Yes')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        classGeneral.ShowMessage("Friend Added");
        fillgrid();
    }
}