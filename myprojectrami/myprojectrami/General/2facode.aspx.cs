using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class _2facode: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["2FA1"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (IsPostBack)
        {
            string code = Request.Form["code3"];
            if (code == Session["Code"].ToString())
            {
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
                code2.Visible = true;
            }
        }
    }
    }
