using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Net.Mail;
using System.Net;
using System.Threading.Tasks;
using System.Text;


public partial class Twofactorauthentication: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null || Session["UserType"].ToString() == null)
            {
                Response.Redirect("../General/login.aspx");
            }
            if (Session["2FA1"].ToString()=="2"|| Session["2FA1"]==null)
            {
                btn4.Text = "Enable";
            }
            else
            {
                btn4.Text = "Disable";
            }
        }

    protected void btn4_Click(object sender, EventArgs e)
    {
        SendEmail sendemail = new SendEmail();
        mySql sqlHelper = new mySql();
        DataSet dsFA = new DataSet();
        SendEmail sendemail1 = new SendEmail();
        string st2fa;
        if (Session["2FA1"].ToString()=="2")
        {
            st2fa = "UPDATE tblUsers SET tblUsers.2FA1 = "+1+"  WHERE (((tblUsers.UserName)='" + Session["User"].ToString() + "'));";
            sendemail.Send(Session["Email"].ToString(), "Two-factor authentication.", "Hello" + " " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString() + " " + "you enabled Two-factor authentication.", "");

        }
        else
        {
             st2fa = "UPDATE tblUsers SET tblUsers.2FA1 = " + 2 + "  WHERE (((tblUsers.UserName)='" + Session["User"].ToString() + "'));";
            sendemail.Send(Session["Email"].ToString(), "Two-factor authentication.", "Hello" + " " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString() + " " + "you disabled Two-factor authentication.", "");


        }
        sqlHelper.ChgData(st2fa);
        string stFA = "SELECT tblUsers.UserName,tblUsers.[2FA1] FROM tblUsers WHERE (((tblUsers.UserName)='" + Session["User"].ToString() + "'));";
        dsFA = sqlHelper.GetData(stFA);
        Session["2FA1"] = dsFA.Tables[0].Rows[0][1].ToString();
        if (Session["2FA1"].ToString() == "2" || Session["2FA1"]==null)
        {
            
            btn4.Text = "Enable";
            Response.Redirect("account.aspx");
        }
        else
        {
           
            btn4.Text = "Disable";
            Response.Redirect("account.aspx");
        }
    }
}
