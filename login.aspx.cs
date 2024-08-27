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
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {

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
        if (Droproll.SelectedValue == "Admin")
        {
            data();
            query = "select uname,pass from adminlogin where uname='" + txtusername.Text + "' and pass='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd1 = cmd.ExecuteReader();
            if (rd1.Read())
            {
              
                Response.Redirect("emptyadmin.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd1.Close();
            con.Close();
           
        }
        if (Droproll.SelectedValue == "Doctor")
        {
            data();
            query = "select username,pass,actor from docdet where username='" + txtusername.Text + "' and pass='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["doc"] = txtusername.Text.ToString();
                Session["actor"] = rd[2].ToString();
                rd.Close();
                data();
                query = "insert into logdetails(uname,logdate,logtime,actor) values('" + txtusername.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','Doctor')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                data();
                query = "update logchart set notime=notime+1 where actname='Doctor'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("dochome.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd.Close();
            con.Close();
          
        }
        if (Droproll.SelectedValue == "Patient")
        {
            data();
            query = "select uname,pwd,actor from patdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd2 = cmd.ExecuteReader();
            if (rd2.Read())
            {
                Session["pat"] = txtusername.Text.ToString();
                Session["pid"] = encrypt(txtusername.Text);
                Session["actor"] = rd2[2].ToString();
                data();
                query = "insert into logdetails(uname,logdate,logtime,actor) values('" + txtusername.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','Patient')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                data();
                query = "update logchart set notime=notime+1 where actname='Patient'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("patienthome.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd2.Close();
            con.Close();
        }
        if (Droproll.SelectedValue == "Insurance Agent")
        {
            data();
            query = "select uname,pwd,actor from agentdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd2 = cmd.ExecuteReader();
            if (rd2.Read())
            {
                Session["agent"] = txtusername.Text.ToString();
                Session["actor"] = rd2[2].ToString();
                rd2.Close();
                data();
                query = "insert into logdetails(uname,logdate,logtime,actor) values('" + txtusername.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','Agent')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                data();
                query = "update logchart set notime=notime+1 where actname='Insurance Agent'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("agenthome.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd2.Close();
            con.Close();
        }
        if (Droproll.SelectedValue == "Friend")
        {
            data();
            query = "select uname,pass,actor from friedndet where uname='" + txtusername.Text + "' and pass='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd2 = cmd.ExecuteReader();
            if (rd2.Read())
            {
                Session["friend"] = txtusername.Text.ToString();
                Session["actor"] = rd2[2].ToString();
                rd2.Close();
                data();
                query = "insert into logdetails(uname,logdate,logtime,actor) values('" + txtusername.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','Friend')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("friendhome.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd2.Close();
            con.Close();
        }

        if (Droproll.SelectedValue == "Medical")
        {
            data();
            query = "select uname,pwd,actor from meddet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd2 = cmd.ExecuteReader();
            if (rd2.Read())
            {
                Session["medical"] = txtusername.Text.ToString();
                Session["actor"] = rd2[2].ToString();
                rd2.Close();
                data();
                query = "insert into logdetails(uname,logdate,logtime,actor) values('" + txtusername.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','Medical')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                data();
                query = "update logchart set notime=notime+1 where actname='Medical'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("medicalhome.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd2.Close();
            con.Close();
        }
        if (Droproll.SelectedValue == "Nurse")
        {
            data();
            query = "select uname,pwd,actor from nursedet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd2 = cmd.ExecuteReader();
            if (rd2.Read())
            {
                Session["nurse"] = txtusername.Text.ToString();
                Session["actor"] = rd2[2].ToString();
                rd2.Close();
                data();
                query = "insert into logdetails(uname,logdate,logtime,actor) values('" + txtusername.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','Nurse')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                data();
                query = "update logchart set notime=notime+1 where actname='Nurse'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("nursehome.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd2.Close();
            con.Close();
        }
        if (Droproll.SelectedValue == "Lab Assistant")
        {
            data();
            query = "select uname,pwd,actor from labassdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd2 = cmd.ExecuteReader();
            if (rd2.Read())
            {
                Session["labassistant"] = txtusername.Text.ToString();
                Session["actor"] = rd2[2].ToString();
                rd2.Close();
                data();
                query = "insert into logdetails(uname,logdate,logtime,actor) values('" + txtusername.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','Lab Assistant')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                data();
                query = "update logchart set notime=notime+1 where actname='Lab Assistant'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("labhome.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd2.Close();
            con.Close();
        }
        if (Droproll.SelectedValue == "Receptionist")
        {
            data();
            query = "select uname,pwd,actor from recepdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd2 = cmd.ExecuteReader();
            if (rd2.Read())
            {
                Session["receptionist"] = txtusername.Text.ToString();
                Session["actor"] = rd2[2].ToString();
                rd2.Close();
                data();
                query = "insert into logdetails(uname,logdate,logtime,actor) values('" + txtusername.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','Receptionist')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                data();
                query = "update logchart set notime=notime+1 where actname='Receptionist'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("receptionisthome.aspx");
            }
            else
            {
                classGeneral.ShowMessage("Invalid username & password");
            }
            rd2.Close();
            con.Close();
        }
    }
    protected void MycloseWindow(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        pup.ShowPopupWindow();  
    }
}