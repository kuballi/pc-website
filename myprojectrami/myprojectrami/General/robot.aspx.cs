using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class robot : System.Web.UI.Page
    {
   
      protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Code"] == null)
            {
                Response.Redirect("signup.aspx");
            }
            if (IsPostBack)
            {
                mySql sqlHelper = new mySql();
                string code = Request.Form["code3"];
           
                if (code == Session["Code"].ToString())
                {
                    string stInsert = "insert into tblUsers(UserName, FirstName, LastName, Phonenumber, Email, Gender, City, Pass, UserType) values('" + Session["a"].ToString() + "', '" + Session["b"].ToString() + "', '" + Session["c"].ToString() + "', " + Session["d"].ToString() + ", '" + Session["e"].ToString() + "', " + Session["f"].ToString() + ", " + Session["g"].ToString() + ", '" + Session["h"].ToString() + "', " + 1 + ")";
                    sqlHelper.ChgData(stInsert);
                    Session["User"] = Session["a"].ToString();
                    Session["UserType"] = "1";
                    Response.Redirect("../General/login.aspx");
                   
                }
                else
                {
                    fail.Text = "Verification code is incorrect.";
                }
            }
        }
    }
