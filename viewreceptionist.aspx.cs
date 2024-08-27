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
using System.Data;
using System.IO;
using System.Text;
using System.Security.Cryptography;

public partial class viewreceptionist : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, a, treatmentid, treatdate, treattime, docname, docuname, hosname, hosloc, pid, pname, dises, type, symp, medi, descrip, labreport, nurseremark;

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
        query = "select treatdate,treattime,docname,hosname,hosloc,dises,type,symp,medi,descrip,labreport,nremark from userrights where actor='" + Session["actor"].ToString() + "'";
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
            labreport = rd1[10].ToString();
            nurseremark = rd1[11].ToString();
            //treatmentid = rd1[12].ToString();


            lbltid.Text = GridView1.SelectedRow.Cells[0].Text.ToString();



            if (treatdate == "Yes")
            {
                lbldate.Text = decrypt(GridView1.SelectedRow.Cells[1].Text.ToString());
            }
            else if (treatdate == "No")
            {
              //  lbldate.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
            }


            if (treattime == "Yes")
            {
                lbltime.Text = decrypt(GridView1.SelectedRow.Cells[2].Text.ToString());
            }
            else if (treattime == "No")
            {
              //  lbltime.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
            }

            lblpatientid.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
            if (docname == "Yes")
            {
                lbldocname.Text = decrypt(GridView1.SelectedRow.Cells[5].Text.ToString());
                // lbldocname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
            }
            else if (docname == "No")
            {
             //   lbldocname.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
            }


            if (hosname == "Yes")
            {
                lblhosname.Text = decrypt(GridView1.SelectedRow.Cells[6].Text.ToString());
            }
            else if (hosname == "No")
            {
              //  lblhosname.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
            }


            if (hosloc == "Yes")
            {
                lblloc.Text = decrypt(GridView1.SelectedRow.Cells[7].Text.ToString());
            }
            else if (hosloc == "No")
            {
              //  lblloc.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            }


            if (dises == "Yes")
            {
                lbldisease.Text = decrypt(GridView1.SelectedRow.Cells[8].Text.ToString());
            }
            else if (dises == "No")
            {
              //  lbldisease.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
            }


            if (type == "Yes")
            {
                lbltype.Text = decrypt(GridView1.SelectedRow.Cells[9].Text.ToString());
            }
            else if (type == "No")
            {
               // lbltype.Text = GridView1.SelectedRow.Cells[9].Text.ToString();
            }


            if (symp == "Yes")
            {
                lblsymptom.Text = decrypt(GridView1.SelectedRow.Cells[10].Text.ToString());
            }
            else if (symp == "No")
            {
               // lblsymptom.Text = GridView1.SelectedRow.Cells[10].Text.ToString();
            }


            if (medi == "Yes")
            {
                lblmedicine.Text = decrypt(GridView1.SelectedRow.Cells[11].Text.ToString());
            }
            else if (medi == "No")
            {
               // lblmedicine.Text = GridView1.SelectedRow.Cells[11].Text.ToString();
            }


            if (descrip == "Yes")
            {
                lbldescription.Text = decrypt(GridView1.SelectedRow.Cells[12].Text.ToString());
            }
            else if (descrip == "No")
            {
               // lbldescription.Text = GridView1.SelectedRow.Cells[12].Text.ToString();
            }

            if (labreport == "Yes")
            {
                lbllabid.Text = decrypt(GridView1.SelectedRow.Cells[13].Text.ToString());
                lblt1.Text = decrypt(GridView1.SelectedRow.Cells[14].Text.ToString());
                lblr1.Text = decrypt(GridView1.SelectedRow.Cells[15].Text.ToString());
                lblt2.Text = decrypt(GridView1.SelectedRow.Cells[16].Text.ToString());
                lblr2.Text = decrypt(GridView1.SelectedRow.Cells[17].Text.ToString());
                lblt3.Text = decrypt(GridView1.SelectedRow.Cells[18].Text.ToString());
                lblr3.Text = decrypt(GridView1.SelectedRow.Cells[19].Text.ToString());
                lblt4.Text = decrypt(GridView1.SelectedRow.Cells[20].Text.ToString());
                lblr4.Text = decrypt(GridView1.SelectedRow.Cells[21].Text.ToString());
                lblt5.Text = decrypt(GridView1.SelectedRow.Cells[22].Text.ToString());
                lblr5.Text = decrypt(GridView1.SelectedRow.Cells[23].Text.ToString());
                lblt6.Text = decrypt(GridView1.SelectedRow.Cells[24].Text.ToString());
                lblr6.Text = decrypt(GridView1.SelectedRow.Cells[25].Text.ToString());

            }
            else if (labreport == "No")
            {
                //lbllabid.Text = (GridView1.SelectedRow.Cells[13].Text.ToString());
                //lblt1.Text = (GridView1.SelectedRow.Cells[14].Text.ToString());
                //lblr1.Text = (GridView1.SelectedRow.Cells[15].Text.ToString());
                //lblt2.Text = (GridView1.SelectedRow.Cells[16].Text.ToString());
                //lblr2.Text = (GridView1.SelectedRow.Cells[17].Text.ToString());
                //lblt3.Text = (GridView1.SelectedRow.Cells[18].Text.ToString());
                //lblr3.Text = (GridView1.SelectedRow.Cells[19].Text.ToString());
                //lblt4.Text = (GridView1.SelectedRow.Cells[20].Text.ToString());
                //lblr4.Text = (GridView1.SelectedRow.Cells[21].Text.ToString());
                //lblt5.Text = (GridView1.SelectedRow.Cells[22].Text.ToString());
                //lblr5.Text = (GridView1.SelectedRow.Cells[23].Text.ToString());
                //lblt6.Text = (GridView1.SelectedRow.Cells[24].Text.ToString());
                //lblr6.Text = (GridView1.SelectedRow.Cells[25].Text.ToString());
            }
            if (nurseremark == "Yes")
            {
                lblnurseid.Text = decrypt(GridView1.SelectedRow.Cells[26].Text.ToString());
                lblnurseremarks.Text = decrypt(GridView1.SelectedRow.Cells[27].Text.ToString());

            }
            else if (nurseremark == "No")
            {
                //lblnurseid.Text = (GridView1.SelectedRow.Cells[26].Text.ToString());
                //lblnurseremarks.Text = (GridView1.SelectedRow.Cells[27].Text.ToString());

            }
            //Response.Redirect("emptyadmin.aspx");
        }
        else
        {
            classGeneral.ShowMessage("Rights not provided by admin");
        }
        rd1.Close();
        con.Close();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strBody = "<html>" +
           "<body>" +
              "<div>Treatment Id: <b>" + lbltid.Text + "</b> </div>" +
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
         "<div>Lab Ass Id: <b>" + lbllabid.Text + "</b> </div>" +
          "<div>Test 1: <b>" + lblt1.Text + "</b> </div>" +
          "<div>Range 1: <b>" + lblr1.Text + "</b> </div>" +
           "<div>Test 2: <b>" + lblt2.Text + "</b> </div>" +
           "<div>Range 2: <b>" + lblr2.Text + "</b> </div>" +
              "<div>Test 3: <b>" + lblt3.Text + "</b> </div>" +
              "<div>Range 3: <b>" + lblr3.Text + "</b> </div>" +
                 "<div>Test 4: <b>" + lblt4.Text + "</b> </div>" +
                 "<div>Range 4: <b>" + lblr4.Text + "</b> </div>" +
                    "<div>Test 5: <b>" + lblt5.Text + "</b> </div>" +
                    "<div>Range 5: <b>" + lblr5.Text + "</b> </div>" +
                       "<div>Test 6: <b>" + lblt6.Text + "</b> </div>" +
                       "<div>Range 6: <b>" + lblr6.Text + "</b> </div>" +
                        "<div>Nurse Id: <b>" + lblnurseid.Text + "</b> </div>" +
                         "<div>Nurse Remarks  <b>" + lblnurseremarks.Text + "</b> </div>" +
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = null;
        data();
        query = "select tid,tdate,ttime,docname,hosname,hosloc,pname,dises,type,symp,medi,descrip,pid,tn1,tr1,tn2,tr2,tn3,tr3,tn4,tr4,tn5,tr5,tn6,tr6,labasid,nurseremarks,nurseid from treatment where pid='" + txtpatid.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}