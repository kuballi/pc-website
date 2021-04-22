
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class contactus : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null || Session["UserType"].ToString() == null)
        {
            Response.Redirect("../General/login.aspx");
        }
        if (IsPostBack)
        {
            bool flag = true;
        string fName = Request.Form["FName"];
        string lname = Request.Form["LName"];
        string email = Request.Form["Email"];
        string subject = Request.Form["Subject"];
        string massage = Request.Form["Massage"];
        SendEmail sendemail = new SendEmail();
        mySql sqlHelper = new mySql();
            if (!sendemail.ChkEmail(email))
            {
                fail.Text = "Email is incorrect.";

                flag = false;
            }
            if (flag)
            {
                sendemail.Send(email, "Contact.", "Hello" + " " + fName + " " + lname + " " + "In the next 24 hours, a representative of our services will contact you soon.", "");


                string stcontact = "insert into tblcontact (FirstName, LastName, Email, Subject, Massage )values('" + fName + "', '" + lname + "' ,'" + email + "', '" + subject + "', '" + massage + "' )";
                sqlHelper.ChgData(stcontact);
                Response.Redirect("shopping.aspx");
            }
               
        }
     }
  }
