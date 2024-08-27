using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using UniversalFunctions;
using System.Data;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class userrights : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd; ClassGeneral classGeneral = new ClassGeneral();
    string query, chk1,chk2,chk3,chk4,chk5,chk6,chk7,chk8,chk9,chk10,chk11,chk12,chk13,chk14,chk15;
    public void data()
    {
        string constring;
        constring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(constring);
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filldrop();
        }
    }

    public void filldrop()
    {
        data();
        query = "select Actor,TreatDate,TreatTime,DocName,DocuName,HosName,HosLoc,Pid,PName,Dises,Type,Symp,Medi,Descrip,labreport,nremark from userrights";
        cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        //drpactorlist.DataSource = ds;
        //drpactorlist.DataMember = "actor";
        //drpactorlist.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            chk1 = "Yes";
        }
        else {
            chk1 = "No";
        }
        if (CheckBox2.Checked == true)
        {
            chk2 = "Yes";
        }
        else
        {
            chk2 = "No";
        }
        if (CheckBox3.Checked == true)
        {
            chk3 = "Yes";
        }
        else
        {
            chk3 = "No";
        }
        if (CheckBox4.Checked == true)
        {
            chk4 = "Yes";
        }
        else
        {
            chk4 = "No";
        }
        if (CheckBox5.Checked == true)
        {
            chk5 = "Yes";
        }
        else
        {
            chk5 = "No";
        }
        if (CheckBox6.Checked == true)
        {
            chk6 = "Yes";
        }
        else
        {
            chk6 = "No";
        }
        if (CheckBox7.Checked == true)
        {
            chk7 = "Yes";
        }
        else
        {
            chk7 = "No";
        }
        if (CheckBox8.Checked == true)
        {
            chk8 = "Yes";
        }
        else
        {
            chk8 = "No";
        }
        if (CheckBox9.Checked == true)
        {
            chk9 = "Yes";
        }
        else
        {
            chk9 = "No";
        }
        if (CheckBox10.Checked == true)
        {
            chk10 = "Yes";
        }
        else
        {
            chk10 = "No";
        }
        if (CheckBox11.Checked == true)
        {
            chk11 = "Yes";
        }
        else
        {
            chk11 = "No";
        }
        if (CheckBox12.Checked == true)
        {
            chk12 = "Yes";
        }
        else
        {
            chk12 = "No";
        }
        if (CheckBox13.Checked == true)
        {
            chk13 = "Yes";
        }
        else
        {
            chk13 = "No";
        }
        if (CheckBox14.Checked == true)
        {
            chk14 = "Yes";
        }
        else
        {
            chk14 = "No";
        }
        if (CheckBox15.Checked == true)
        {
            chk15 = "Yes";
        }
        else
        {
            chk15 = "No";
        }
        data();
        query = "select actor from userrights where actor='"+drpactorlist.SelectedItem.Text+"'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd1 = cmd.ExecuteReader();
        if (rd1.Read())
        {
            if (drpactorlist.Text == "--Select Actor--")
            {
                lblerror.Text = "Select Actor";
            }
            else
            {
                data();
                query = "update userrights set treatdate='" + chk1 + "',treattime='" + chk2 + "',docname='" + chk3 + "',docuname='" + chk4 + "',hosname='" + chk5 + "',hosloc='" + chk6 + "',pid='" + chk7 + "',pname='" + chk8 + "',dises='" + chk9 + "',type='" + chk10 + "',symp='" + chk11 + "',medi='" + chk12 + "',descrip='" + chk13 + "',labreport='" + chk14 + "',nremark='" + chk15 + "' where actor='" + drpactorlist.SelectedItem.Text + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("userrights.aspx");
            }
        }
        else
        {
            data();
            query = "insert into userrights( treatdate,treattime,docname,docuname,hosname,hosloc,pid,pname,dises,type,symp,medi,descrip,actor,labreport,nremark) values('" + chk1 + "','" + chk2 + "','" + chk3 + "','" + chk4 + "','" + chk5 + "','" + chk6 + "','" + chk7 + "','" + chk8 + "','" + chk9 + "','" + chk10 + "','" + chk11 + "','" + chk12 + "','" + chk13 + "' ,'" + drpactorlist.SelectedItem.Text + "','" + chk14 + "','" + chk15 + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("userrights.aspx");
        }
        rd1.Close();
        con.Close();


       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        CheckBox1.Checked = true;
        CheckBox2.Checked = true;
        CheckBox3.Checked = true;
        CheckBox4.Checked = true;
        CheckBox5.Checked = true;
        CheckBox6.Checked = true;
        CheckBox7.Checked = true;
        CheckBox8.Checked = true;
        CheckBox9.Checked = true;
        CheckBox10.Checked = true;
        CheckBox11.Checked = true;
        CheckBox12.Checked = true;
        CheckBox13.Checked = true;
        CheckBox14.Checked = true;
        CheckBox15.Checked = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        CheckBox5.Checked = false;
        CheckBox6.Checked = false;
        CheckBox7.Checked = false;
        CheckBox8.Checked = false;
        CheckBox9.Checked = false;
        CheckBox10.Checked = false;
        CheckBox11.Checked = false;
        CheckBox12.Checked = false;
        CheckBox13.Checked = false;
        CheckBox14.Checked = false;
        CheckBox15.Checked = false;
    }
}