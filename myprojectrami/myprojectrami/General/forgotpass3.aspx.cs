using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class forgotpass3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        bool flag = true;
        if (Session["UserName"] == null)
        {
            Response.Redirect("forgotpass1.aspx");
        }
        if (IsPostBack)
        {
            string pass = Request.Form["passname"];
            mySql sqlHelper = new mySql();
            DataSet dsChk1 = new DataSet();
       
           
            if (Session["UserName"].ToString()== pass && flag)
            {
                fail.Text = "You'r password can't be like you'r username.";
                flag = false;
            }
            if (Session["LastName"].ToString() == pass && flag)
            {
                fail.Text = "You'r password can't be like you'r last name.";
                flag = false;             
            }
            if (Session["FirstName"].ToString() == pass && flag)
            {
                fail.Text = "You'r password can't be like you'r firstname.";
                flag = false;
            }
            if (Session["Oldpassword"].ToString() == pass && flag)
            {
                flag = false;
                fail.Text = "You'r password can't be like you'r old password.";
            }
            if (flag)
            {
                string stpss = "UPDATE tblUsers SET tblUsers.Pass = '"+ pass + "' WHERE (((tblUsers.UserName)= '" + Session["UserName"].ToString() + "'));";
                sqlHelper.ChgData(stpss);
                Response.Redirect("login.aspx");
            }
        }
        }
    }
