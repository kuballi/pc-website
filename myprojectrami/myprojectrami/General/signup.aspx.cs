using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (IsPostBack)
            {
                bool flag = true;
                string fName = Request.Form["FName"];
                string lname = Request.Form["LName"];
                string email = Request.Form["Email"];
                string phonenum = Request.Form["Phonenum"];
                string gender = Request.Form["Gender"];
                string city = Request.Form["City"];
                string username = Request.Form["UserName"];
                string pass = Request.Form["Pass"];
                SendEmail sendemail = new SendEmail();
                mySql sqlHelper = new mySql();
                DataSet dsChk1 = new DataSet();
                DataSet dsChk2 = new DataSet();
                DataSet dsChk3 = new DataSet();
                string stChk1 = "SELECT tblUsers.UserName FROM tblUsers WHERE(((tblUsers.UserName)='" + username + "'));";
                dsChk1 = sqlHelper.GetData(stChk1);
                 if (dsChk1.Tables[0].Rows.Count > 0 && flag)
                {
                fail.Text = "Username is already taken.";


                flag = false;
                }

                string stChk2 = "SELECT tblUsers.Email FROM tblUsers WHERE(((tblUsers.Email)='" + email + "'));";
                dsChk2 = sqlHelper.GetData(stChk2);
                 if (dsChk2.Tables[0].Rows.Count > 0 && flag)
                {
                fail.Text = "Email is already taken.";
                flag = false;
                }

                string stChk3 = "SELECT tblUsers.Phonenumber FROM tblUsers WHERE (((tblUsers.Phonenumber)='" + phonenum + "'));";
                dsChk3 = sqlHelper.GetData(stChk3);
                 if (dsChk3.Tables[0].Rows.Count > 0 && flag)
                {
                
                 fail.Text = "Phone number is already taken.";
                flag = false;
                }
                 if (!sendemail.ChkEmail(email))
                {
                    fail.Text = "Email is incorrect.";
                
                    flag = false;
                }
           
            if (flag)
                {
                Session["a"] = username;
                Session["b"] = fName;
                Session["c"] = lname;
                Session["d"] = phonenum;
                Session["e"] = email;
                Session["f"] = gender;
                Session["g"] = city;
                Session["h"] = pass;
                Session["Code"] = sendemail.GetCode(6);
                sendemail.Send(email, "Thanks for you'r signed up.", "Hello" + " " + fName + " " + lname + " " + "I'm glad you signed up for my website.", "");
                sendemail.Send(email, "Verification code.", "Hello you'r code is:", Session["Code"].ToString());
                Response.Redirect("../General/robot.aspx");
                  
                }
            }

        }

  
}
