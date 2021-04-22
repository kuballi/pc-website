using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["User"] == null || Session["UserType"].ToString() == null)
        {
            Response.Redirect("../General/login.aspx");
        }
    }

 
}
