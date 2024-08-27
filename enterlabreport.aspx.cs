using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using UniversalFunctions;
using System.Web.Configuration;
using System.IO;
using System.Text;
using System.Security.Cryptography;
public partial class enterlabreport : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a, agentid;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["labassistant"].ToString();
      
        data();
        query = "select lasid from labassdet where uname='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lbllabid.Text = rd[0].ToString();
        }
        rd.Close();
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
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
    protected void txttid_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select pid from treatment where tid='" + txttid.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblpatid.Text = rd[0].ToString();
            //lbldisease.Text = rd[1].ToString();
            //lbltype.Text = rd[2].ToString();
        }
        else
        {
            classGeneral.ShowMessage("Invalid Treatment ID");
        }
        rd.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string test1 = encrypt(testname1.Text);
        string test2 = encrypt(testname2.Text);
        string test3 = encrypt(testname3.Text);
        string test4 = encrypt(testname4.Text);
        string test5 = encrypt(testname5.Text);
        string test6 = encrypt(testname6.Text);
        string r1 = encrypt(range1.Text);
        string r2 = encrypt(range2.Text);
        string r3 = encrypt(range3.Text);
        string r4 = encrypt(range4.Text);
        string r5 = encrypt(range5.Text);
        string r6= encrypt(range6.Text);
        string labid = encrypt(lbllabid.Text);
        data();
        query = "update treatment set tn1='" + test1 + "',tr1='" + r1 + "',tn2='" + test2 + "',tr2='" + r2 + "',tn3='" + test3 + "',tr3='" + r3 + "',tn4='" + test4 + "',tr4='" + r4 + "',tn5='" + test5 + "',tr5='" + r5 + "',tn6='" + test6 + "',tr6='" + r6 + "',labasid='" + labid + "' where tid='" + txttid.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        classGeneral.ShowMessage("Lab Report Added");
        txttid.Text = "";
        testname1.Text = "";
        testname2.Text = "";
        testname3.Text = "";
        testname4.Text = "";
        testname5.Text = "";
        testname6.Text = "";
        range1.Text = "";
        range2.Text = "";
        range3.Text = "";
        range4.Text = "";
        range5.Text = "";
        range6.Text = "";
        lblpatid.Text = ".........";
    }
}