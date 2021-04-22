using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["User"] == null || Session["UserType"].ToString() == null)
        {
            Response.Redirect("../General/login.aspx");
        }
        if (IsPostBack)
        {
            mySql sqlHelper = new mySql();
            DataSet dsdel= new DataSet();
            DataSet dsid= new DataSet();
            SendEmail sendemail = new SendEmail();
            string stid = "SELECT tblUsers.UserId, tblUsers.UserName FROM tblUsers WHERE (((tblUsers.UserName)='" + Session["User"].ToString()+ "'));";
            dsid= sqlHelper.GetData(stid);
            string id = dsid.Tables[0].Rows[0][0].ToString();
            string stDelC = "DELETE tblUsers.UserId FROM tblUsers WHERE(((tblUsers.UserId) =" + id + "));";
            sqlHelper.ChgData(stDelC);
            sendemail.Send(Session["Email"].ToString(), "You'r account was deleted.", "Hello" + " " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString() + " " + "You'r account was deleted .If its not you can contact us.", "");
            Response.Redirect("../General/Homepage.html");

        }
    }
    }
