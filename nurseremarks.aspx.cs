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
public partial class nurseremarks : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, a; ClassGeneral classGeneral = new ClassGeneral();
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["nurse"].ToString();
        data();
        query = "select nurseid from nursedet where uname='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblnurseid.Text = rd[0].ToString();
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
    protected void txttreatmentnum_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select pid from treatment where tid='" + txttreatmentnum.Text + "'";
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
        string remarks = encrypt(txtremarks.Text);
        string nurseid = encrypt(lblnurseid.Text);

        data();
        query = "update treatment set nurseremarks='" + remarks + "',nurseid='" + nurseid + "' where tid='" + txttreatmentnum.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        classGeneral.ShowMessage("Remarks Added!!!");
        txtremarks.Text = "";
        txttreatmentnum.Text = "";
        lblpatid.Text = "........";
        //lbldisease.Text = "........";
        //lbltype.Text = "........";
    }
}