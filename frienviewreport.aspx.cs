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
using System.Security.Cryptography;
using System.Text;
using System.IO;
public partial class frienviewreport : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a, treatdate, treattime, docname, docuname, hosname, hosloc, pid, pname, dises, type, symp, medi, descrip;
    protected void Page_Load(object sender, EventArgs e)
    {
        //a = Session["pat"].ToString();
        //data();
        //query = "select patid from patdet where uname='" + a.ToString() + "'";
        //cmd = new SqlCommand(query, con);
        //SqlDataReader rd = cmd.ExecuteReader();
        //while (rd.Read())
        //{
        //    lblpatient.Text = rd[0].ToString();
        //}
        //rd.Close();
        //con.Close();
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
    private string decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       data();
        query = "select treatdate,treattime,docname,hosname,hosloc,dises,type,symp,medi,descrip from userrights where actor='" + Session["actor"].ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd1 = cmd.ExecuteReader();
        if (rd1.Read())
        {
            treatdate = rd1[0].ToString();
            treattime = rd1[1].ToString();
            docname = rd1[2].ToString();
            hosname = rd1[3].ToString();
            hosloc = rd1[4].ToString();
            dises = rd1[5].ToString();
            type = rd1[6].ToString();
            symp = rd1[7].ToString();
            medi = rd1[8].ToString();
            descrip = rd1[9].ToString();

            if (treatdate == "Yes")
            {
                lbldate.Text = decrypt(GridView1.SelectedRow.Cells[0].Text.ToString());
            }
            else if (treatdate == "No")
            {
                lbldate.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
            }


            if (treattime == "Yes")
            {
                lbltime.Text = decrypt(GridView1.SelectedRow.Cells[1].Text.ToString());
            }
            else if (treattime == "No")
            {
                lbltime.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
            }


            if (docname == "Yes")
            {
                lbldocname.Text = decrypt(GridView1.SelectedRow.Cells[2].Text.ToString());
            }
            else if (docname == "No")
            {
                lbldocname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
            }


            if (hosname == "Yes")
            {
                lblhosname.Text = decrypt(GridView1.SelectedRow.Cells[3].Text.ToString());
            }
            else if (hosname == "No")
            {
                lblhosname.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
            }


            if (hosloc == "Yes")
            {
                lblloc.Text = decrypt(GridView1.SelectedRow.Cells[4].Text.ToString());
            }
            else if (hosloc == "No")
            {
                lblloc.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
            }


            if (dises == "Yes")
            {
                lbldisease.Text = decrypt(GridView1.SelectedRow.Cells[5].Text.ToString());
            }
            else if (dises == "No")
            {
                lbldisease.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
            }


            if (type == "Yes")
            {
                lbltype.Text = decrypt(GridView1.SelectedRow.Cells[6].Text.ToString());
            }
            else if (type == "No")
            {
                lbltype.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
            }


            if (symp == "Yes")
            {
                lblsymptom.Text = decrypt(GridView1.SelectedRow.Cells[7].Text.ToString());
            }
            else if (symp == "No")
            {
                lblsymptom.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            }


            if (medi == "Yes")
            {
                lblmedicine.Text = decrypt(GridView1.SelectedRow.Cells[8].Text.ToString());
            }
            else if (medi == "No")
            {
                lblmedicine.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
            }


            if (descrip == "Yes")
            {
                lbldescription.Text = decrypt(GridView1.SelectedRow.Cells[9].Text.ToString());
            }
            else if (descrip == "No")
            {
                lbldescription.Text = GridView1.SelectedRow.Cells[9].Text.ToString();
            }



            //Response.Redirect("emptyadmin.aspx");
        }
        else
        {
            classGeneral.ShowMessage("Rights not Provided by Admin");
        }
        rd1.Close();
        con.Close();



        //lbltime.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        //lbldocname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        //lblhosname.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        //lblloc.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        //lbldisease.Text = decrypt(GridView1.SelectedRow.Cells[5].Text.ToString());
        //lbltype.Text = decrypt(GridView1.SelectedRow.Cells[6].Text.ToString());
        //lblsymptom.Text = decrypt(GridView1.SelectedRow.Cells[7].Text.ToString());
        //lblmedicine.Text = decrypt(GridView1.SelectedRow.Cells[8].Text.ToString());
        //lbldescription.Text = decrypt(GridView1.SelectedRow.Cells[9].Text.ToString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strBody = "<html>" +
           "<body>" +
               "<div>Reported Date: <b>" + lbldate.Text + "</b></div> " +
               "<div>Reported Time: <b>" + lbltime.Text + "</b> </div>" +
               "<div>Doctor Name: <b>" + lbldocname.Text + "</b></div>" +
               "<div>Hospital Name: <b>" + lblhosname.Text + "</b></div>" +
               "<div>Location: <b>" + lblloc.Text + "</b></div>" +
               "<div>Disease: <b>" + lbldisease.Text + "</b></div>" +
               "<div>Type: <b>" + lbltype.Text + "</b></div>" +
               "<div>Symptom: <b>" + lblsymptom.Text + "</b></div>" +
        "<div>Medicine Prescribed: <b>" + lblmedicine.Text + "</b></div>" +
        "<div>Description: <b>" + lbldescription.Text + "</b> </div>" +
            //"<table width=\"100%\" style=\"background-color:#cfcfcf;\"><tr><td>1st Cell body data</td><td>2nd cell body data</td></tr></table>" +
            //"Ms Word document generated successfully." +
           "</body>" +
           "</html>";
        string fileName = "report.doc";
        // You can add whatever you want to add as the HTML and it will be generated as Ms Word docs
        Response.AppendHeader("Content-Type", "application/msword");
        Response.AppendHeader("Content-disposition", "attachment; filename=" + fileName);
        Response.Write(strBody);
    }


    public void fillgrid()
    {
        data();
        query = "SELECT tdate, ttime,pid,pname, docname, hosname, hosloc, dises, type, symp, medi, descrip FROM treatment WHERE (LEFT(pid, 255) =(SELECT LEFT(patusername, 255) AS patid FROM friendslist WHERE (LEFT(frndusername, 255) = '"+Session["friend"].ToString()+"') and status='Yes')) ";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        System.Data.DataSet ds = new System.Data.DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        data();
        query = "SELECT tdate, ttime,pid,pname, docname, hosname, hosloc, dises, type, symp, medi, descrip FROM treatment WHERE (LEFT(pid, 255) =(SELECT LEFT('"+txtpatid.Text+"', 255) AS patid FROM friendslist WHERE (LEFT(frndusername, 255) = '"+Session["friend"].ToString()+"') and status='Yes')) ";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}