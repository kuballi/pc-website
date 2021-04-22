using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            if (Session["User"] == null || Session["UserType"].ToString() == null)
            {
                Response.Redirect("../General/login.aspx");
            }
            bool flag;
            if (IsPostBack)

             { 
             flag = true;
             string email = Request.Form["newemail"];
             string email2 = Request.Form["oldemail"];
             mySql sqlHelper = new mySql();
             SendEmail sendemail = new SendEmail();
             DataSet dschk1 = new DataSet();
             string stChk1 = "SELECT tblUsers.Email FROM tblUsers WHERE(((tblUsers.Email)='" + email + "'));";
             dschk1 = sqlHelper.GetData(stChk1);
            if (dschk1.Tables[0].Rows.Count > 0 && flag)
            {
            
                flag = false;
                fail.Text = "You'r email address is already taken.";

            }
            if (email2 != Session["Email"].ToString() && flag)
                {
                flag = false;
                fail.Text = "You'r email address is incorecct.";

            }
            if (Session["Email"].ToString() == email && flag)
                {
                    flag = false;
                fail.Text = "You'r email address can't be like you'r old email address.";
                }
            if (!sendemail.ChkEmail(email))
            {
                fail.Text = "Email is incorrect.";

                flag = false;
            }
            if (flag)
                {
                    string stemail = "UPDATE tblUsers SET tblUsers.Email = '" + email + "' WHERE (((tblUsers.UserName)= '" + Session["User"].ToString() + "'));";
                    sqlHelper.ChgData(stemail);

                sendemail.Send(email2, "Email address changed.", "Hello" + " " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString() + " " + "You'r email address was be changed.If its not you can contact us.", "");
                Session["Email"] = email;
                Response.Redirect("account.aspx");
                }
            }
        }
}

