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


public partial class forgotpass1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (IsPostBack)
        {
            bool flag = false;
            string email = Request.Form["Emailname"];
            mySql sqlHelper = new mySql();
            SendEmail sendemail = new SendEmail();
            DataSet dsFog = new DataSet();
            
            string stFog = "SELECT tblUsers.UserName, tblUsers.FirstName, tblUsers.LastName, tblUsers.Phonenumber, tblUsers.Email, tblUsers.Gender, tblUsers.City, tblUsers.Pass, tblUsers.UserType FROM tblUsers WHERE(((tblUsers.Email) ='" + email + "')) ;";
            dsFog = sqlHelper.GetData(stFog);
        
         

            if (dsFog.Tables[0].Rows.Count > 0)
                {
                Session["FirstName"] = dsFog.Tables[0].Rows[0][1];
                Session["LastName"] = dsFog.Tables[0].Rows[0][2];
                Session["UserName"] = dsFog.Tables[0].Rows[0][0];
                Session["Oldpassword"] = dsFog.Tables[0].Rows[0][7];
                Session["Code"] = sendemail.GetCode(6);
                sendemail.Send(email, "Verification code.", "Hello you'r code is:", Session["Code"].ToString());
                Response.Redirect("forgotpass2.aspx");
                flag = true;
            }
            if (!flag)
            {
              fail.Text= "Email is incorrect.";
            }
            }
        }
   
}
