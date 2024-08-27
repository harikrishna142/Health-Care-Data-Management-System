using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; using UniversalFunctions;
using System.IO;
using System.Globalization;
using System.Web.UI;
using System.Web.Configuration;
/// <summary>
/// Summary description for ClassGeneral
/// </summary>

namespace UniversalFunctions
{

    public class ClassGeneral
    {

        public ClassGeneral()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        //Method for Javascript Message
        public void ShowMessage(string message)
        {
            string cleanMessage = message.Replace("'", "\'");
            Page page = HttpContext.Current.CurrentHandler as Page;
            string script = string.Format("alert('{0}');", cleanMessage);
            if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
            {
                page.ClientScript.RegisterClientScriptBlock(page.GetType(), "<script language='javascript'>" + Environment.NewLine + "window.alert('" + message + "')</script>", script, true);

            }
        }

        public void ReturnConfirmMessage(string message)
        {
            string cleanMessage = message.Replace("'", "\'");
            Page page = HttpContext.Current.CurrentHandler as Page;
            string script = string.Format("return confirm('{0}');", cleanMessage);

            if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("return confirm"))
            {
                page.ClientScript.RegisterClientScriptBlock(page.GetType(), "<script language='javascript'>" + Environment.NewLine + "window.return confirm('" + message + "')</script>", script, true);
            }
        }

        public void InsertData(string query)
        {
            using (SqlConnection con = new SqlConnection())
            {

            }
        }

        //Method for calling conncetionstring
        public string GetSqlConnection()
        {
            return WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        }


        //Method for filling dataset universal calling
        public DataSet FillDataSet(string sqlquery)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(GetSqlConnection()))
            {
                try
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
                    da.Fill(ds);
                }
                catch (Exception exception)
                {
                    ShowMessage("Error: " + exception);
                }
                finally
                {
                    con.Close();
                }
            }
            return ds;
        }
        //Method for Randomnumber
        public int randomnumber(int min, int max)
        {
            Random rnd = new Random();
            return rnd.Next(min, max);

        }
        //Method for clearing the controls inside the form
        public void ClearControl(Control parent)
        {
            foreach (Control ctrl in parent.Controls)
            {
                if (ctrl.GetType() == typeof(TextBox))
                {
                    ((TextBox)(ctrl)).Text = string.Empty;
                }
                if (ctrl.GetType() == typeof(DropDownList))
                {
                    ((DropDownList)(ctrl)).SelectedIndex = -1;
                }

                if (ctrl.GetType() == typeof(Label))
                {
                    ((Label)(ctrl)).Text = string.Empty;
                }

                if (ctrl.GetType() == typeof(CheckBox))
                {
                    ((CheckBox)(ctrl)).Checked = false;
                }

                if (ctrl.GetType() == typeof(RadioButton))
                {
                    ((RadioButton)(ctrl)).Checked = false;
                }

                if (ctrl.HasControls())
                {
                    ClearControl(ctrl);
                }
            }
        }
    }
}