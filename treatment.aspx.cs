using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using UniversalFunctions;
using System.Web.Configuration;
using System.Windows.Forms;
using System.IO;
using System.Text;
using System.Security.Cryptography;
public partial class treatment : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, docname;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
        lbltime.Text = System.DateTime.Now.ToShortTimeString();
        docname = Session["doc"].ToString();
        data();
        query = "select docname,docid from docdet where username='" + docname.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd1 = cmd.ExecuteReader();
        if (rd1.Read())
        {
            lbldocname.Text = rd1[0].ToString();
            lbldocid.Text = rd1[1].ToString();
        }
        else
        {

        }
        rd1.Close();
        con.Close();
       
        if (!Page.IsPostBack)
        {
            drophospitalname.DataBind();
            lbltid.Text = Convert.ToInt32(randomnumber(00121, 99899)).ToString();
        }   
    }
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string disease = encrypt(txtdisease.Text);
        string type = encrypt(txttype.Text);
        string symptom = encrypt(txtsymptoms.Text);
        string medicine = encrypt(txtmedicine.Text);
        string descrip = encrypt(txtdescription.Text);
        string patname = encrypt(txtpname.Text);
        string hosname = encrypt(drophospitalname.SelectedItem.Text);
        string hosloc = encrypt(txthosloc.Text);
        string treatdate = encrypt(lbldate.Text);
        string treattime = encrypt(lbltime.Text);
        docname = encrypt(Session["doc"].ToString());
        string dcname = encrypt(lbldocname.Text);
        string patid = DropDownList1.SelectedItem.Text;
        string no_det = encrypt("not added");
        data();
        query = "insert into treatment(tdate,ttime,docname,docuname,hosname,hosloc,pid,pname,dises,type,symp,medi,descrip,tid,tn1,tr1,tn2,tr2,tn3,tr3,tn4,tr4,tn5,tr5,tn6,tr6,labasid,nurseremarks,nurseid)values('" + treatdate + "','" + treattime + "','" + dcname + "','" + docname.ToString() + "','" + hosname.ToString() + "','" + hosloc.ToString() + "','" + patid + "','" + patname.ToString() + "','" + disease.ToString() + "','" + type.ToString() + "','" + symptom.ToString() + "','" + medicine.ToString() + "','" + descrip.ToString() + "','" + lbltid.Text + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "','" + no_det + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        classGeneral.ShowMessage("Treatment History Added");
        txthosloc.Text = "";
        //drophospitalname.SelectedItem.Text = "";
        txtpname.Text = "";
        txtdisease.Text = "";
        txttype.Text = "";
        txtsymptoms.Text = "";
        txtmedicine.Text = "";
        txtdescription.Text = "";
        DropDownList1.SelectedIndex = -1;
        Response.Redirect("treatment.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        data();
        query = "select paname,uname from patdet where patid='" + DropDownList1.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            txtpname.Text = rd[0].ToString();
            lblpuname.Text = rd[1].ToString();
        }
        rd.Close();
        con.Close();
    }
    protected void drophospitalname_SelectedIndexChanged(object sender, EventArgs e)
    {
       
            data();
            query = "select hosloc from hospdet where hosname='" + drophospitalname.SelectedItem + "' and docid='" + lbldocid.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                txthosloc.Text = rd[0].ToString();
            }
            rd.Close();
            con.Close();
       
    }
}