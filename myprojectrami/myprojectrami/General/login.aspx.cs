using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            string user = Request.Form["username"];
            string pass = Request.Form["pass"];
            mySql sqlLog = new mySql();
            DataSet dsLog = new DataSet();
            DataSet dsFA = new DataSet();
            SendEmail sendemail = new SendEmail();
            if (user.IndexOf('@') < 0 && user.IndexOf('.') < 0)
            {
                string stLog = "SELECT tblUsers.UserName, tblUsers.FirstName, tblUsers.LastName, tblUsers.Phonenumber, tblUsers.Email, tblUsers.Gender, tblUsers.City, tblUsers.Pass, tblUsers.UserType FROM tblUsers WHERE(((tblUsers.UserName) ='" + user + "') AND((tblUsers.Pass) ='" + pass + "'));";
                dsLog = sqlLog.GetData(stLog);
                if (dsLog.Tables[0].Rows.Count > 0)
                {
                    Session["User"] = dsLog.Tables[0].Rows[0][0].ToString();
                    Session["FirstName"] = dsLog.Tables[0].Rows[0][1].ToString();
                    Session["LastName"] = dsLog.Tables[0].Rows[0][2].ToString();
                    Session["Phonenumber"] = dsLog.Tables[0].Rows[0][3].ToString();
                    Session["Email"] = dsLog.Tables[0].Rows[0][4].ToString();
                    Session["Gender"] = dsLog.Tables[0].Rows[0][5].ToString();
                    Session["City"] = dsLog.Tables[0].Rows[0][6].ToString();
                    Session["Pass"] = dsLog.Tables[0].Rows[0][7].ToString();
                    Session["UserType"] = dsLog.Tables[0].Rows[0][8].ToString();
                    string stFA = "SELECT tblUsers.UserName, tblUsers.[2FA1] FROM tblUsers WHERE (((tblUsers.UserName)='" + user + "'));";
                    dsFA = sqlLog.GetData(stFA);
                    bool flag = false;
                    if (dsFA.Tables[0].Rows.Count > 0)
                    {
                        Session["2FA1"] = dsFA.Tables[0].Rows[0][1].ToString();
                        flag = true;
                        if (Session["2FA1"].ToString() == "1")
                        {
                            Session["Code"] = sendemail.GetCode(6);
                            sendemail.Send(Session["Email"].ToString(), "Two-factor authentication.", "Hello you'r code is:", Session["Code"].ToString());
                            Response.Redirect("2facode.aspx");
                        }
                    }
                    if (!flag)
                    {
                        Session["2FA1"] = "2";
                    }
                    switch (Session["UserType"].ToString())
                    {
                        case "1":
                            Response.Redirect("../User/shopping.aspx");
                            break;
                        case "2":
                            Response.Redirect("../Admin/statsuser.aspx");
                            break;
                    }
                }
                else
                {
                    fail.Text = "Username or password is incorrect.";
                }
            }
            else
            {
                string stLog = "SELECT tblUsers.UserName,tblUsers.FirstName, tblUsers.LastName, tblUsers.Phonenumber, tblUsers.Email, tblUsers.Gender, tblUsers.City, tblUsers.Pass, tblUsers.UserType FROM tblUsers WHERE (((tblUsers.Email)= '" + user + "') AND ((tblUsers.Pass)='" + pass + "'))";
                dsLog = sqlLog.GetData(stLog);
                if (dsLog.Tables[0].Rows.Count > 0)
                {
                    Session["User"] = dsLog.Tables[0].Rows[0][0].ToString();
                    Session["FirstName"] = dsLog.Tables[0].Rows[0][1].ToString();
                    Session["LastName"] = dsLog.Tables[0].Rows[0][2].ToString();
                    Session["Phonenumber"] = dsLog.Tables[0].Rows[0][3].ToString();
                    Session["Email"] = dsLog.Tables[0].Rows[0][4].ToString();
                    Session["Gender"] = dsLog.Tables[0].Rows[0][5].ToString();
                    Session["City"] = dsLog.Tables[0].Rows[0][6].ToString();
                    Session["Pass"] = dsLog.Tables[0].Rows[0][7].ToString();
                    Session["UserType"] = dsLog.Tables[0].Rows[0][8].ToString();
                    string stFA = "SELECT tblUsers.Email, tblUsers.[2FA1] FROM tblUsers WHERE (((tblUsers.Email)='" + user + "'));";
                    dsFA = sqlLog.GetData(stFA);
                    bool flag = false;
                    if (dsFA.Tables[0].Rows.Count > 0)
                    {
                        Session["2FA1"] = dsFA.Tables[0].Rows[0][1].ToString();
                        flag = true;
                        if (Session["2FA1"].ToString() == "1")
                        {
                            Session["Code"] = sendemail.GetCode(6);
                            sendemail.Send(Session["Email"].ToString(), "Two-factor authentication.", "Hello you'r code is:", Session["Code"].ToString());
                            Response.Redirect("2facode.aspx");
                        }
                    }
                    if (!flag)
                    {
                        Session["2FA1"] = "2";
                    }
                    switch (Session["UserType"].ToString())
                    {
                        case "1":
                            Response.Redirect("../User/shopping.aspx");
                            break;
                        case "2":
                            Response.Redirect("../Admin/statsuser.aspx");
                            break;
                    }
                }
                else
                {
                    fail.Text = "Email or password is incorrect.";
                }
            }

        }
     
    }
}
       

  

    
