using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["User"] == null || Session["UserType"].ToString() == null)
        {
            Response.Redirect("../General/login.aspx");
        }
        bool flag = true;
        if (IsPostBack)
        {
            string pass = Request.Form["newpass"];
            string pass2 = Request.Form["oldpass"];
            mySql sqlHelper = new mySql(); 
            SendEmail sendemail = new SendEmail();
            if (pass ==Session["User"].ToString() && flag)
            {
                flag = false;
                fail.Text = "You'r password can't be like you'r username.";
            }
            if (pass2 != Session["Pass"].ToString() && flag)
            {
                flag = false;
                fail.Text = "You'r password its incorecct.";

            }
            if (pass ==Session["LastName"].ToString() && flag)
            {
                flag = false;
                fail.Text = "You'r password can't be like you'r last name.";
            }
            if (pass ==Session["FirstName"].ToString()  && flag)
            {
                flag = false;
                fail.Text = "You'r password can't be like you'r first name.";
            }
            if (Session["Pass"].ToString() == pass && flag)
            {
                flag = false;
                fail.Text = "You'r password can't be like you'r old password.";
            }
            if (flag)
            {
                
                string stpss = "UPDATE tblUsers SET tblUsers.Pass = '" + pass + "' WHERE (((tblUsers.UserName)= '" + Session["User"].ToString() + "'));";
                sqlHelper.ChgData(stpss);
                sendemail.Send(Session["Email"].ToString(),"Password changed.", "Hello" + " " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString() + " " + "You'r password was be changed.If its not you can contact us.", "");
                Session["Password"] = null;
                Session["Password"] = pass;
                Response.Redirect("account.aspx");
            }
        }
    }
    }
