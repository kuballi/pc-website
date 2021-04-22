using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class username : System.Web.UI.Page
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
            string username = Request.Form["newuser"];
            string username2 = Request.Form["olduser"];
            mySql sqlHelper = new mySql();           
            SendEmail sendemail = new SendEmail();
            DataSet dsChk1 = new DataSet();
            string stChk1 = "SELECT tblUsers.UserName FROM tblUsers WHERE(((tblUsers.UserName)='" + username + "'));";
            dsChk1 = sqlHelper.GetData(stChk1);
            if (dsChk1.Tables[0].Rows.Count>0&& flag)
            {
                flag = false;
                fail.Text = "You'r username already taken";
            }
            if (username2 != Session["User"].ToString() && flag)
            {
                flag = false;
                fail.Text = "You'r username is incorecct.";

            }
            if (username == Session["LastName"].ToString() && flag)
            {
                flag = false;
                fail.Text = "You'r username can't be like you'r last name.";
            }
            if (username == Session["FirstName"].ToString() && flag)
            {
                flag = false;
                fail.Text = "You'r username can't be like you'r first name.";

            }
            if (Session["User"].ToString() == username && flag)
            {
                flag = false;
                fail.Text ="You'r username can't be like you'r old username.";

            }
            if (flag)
            {
                
                string stpss = "UPDATE tblUsers SET tblUsers.UserName = '" + username + "' WHERE (((tblUsers.Email)= '" + Session["Email"].ToString() + "'));";
                sqlHelper.ChgData(stpss);
                sendemail.Send(Session["Email"].ToString(), "Username changed.", "Hello" + " " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString() + " " + "You'r username was be changed.If its not you can contact us.", "");
                Session["User"] = null;
                Session["User"] = username;
                Response.Redirect("account.aspx");
            }
        }
    }
    }
