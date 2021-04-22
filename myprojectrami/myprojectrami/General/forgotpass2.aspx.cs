using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class forgotpass2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["UserName"]==null)
        {
            Response.Redirect("forgotpass1.aspx");
        }
        if (IsPostBack)
        {
            string code = Request.Form["code3"];
            if (code == Session["Code"].ToString())
            {
                Response.Redirect("forgotpass3.aspx");
            }
            else
            {
                fail.Text = "Verification code is incorrect.";
            }
        }
        }
    }
