using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class Payment : System.Web.UI.Page
    {
   public string CardNumber="", Month = "", Year = "", Address = "", ZipCode = "", CVV = "";

  

    protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["User"] == null || Session["UserType"].ToString() == null)
        {
            Response.Redirect("../General/login.aspx");
        }
        mySql sqlHelper = new mySql();
        DataSet dsIt = new DataSet();
            u9.Visible = true;
        btn.Visible = true;
            string fname = Session["FirstName"].ToString();
            string stIt = "SELECT tblUsers.CardNumber, tblUsers.Month1, tblUsers.Year1, tblUsers.Address, tblUsers.ZipCode, tblUsers.Cvv, tblUsers.FirstName FROM tblUsers WHERE (((tblUsers.FirstName)='" + fname + "'));";
            dsIt = sqlHelper.GetData(stIt);
      
            if (dsIt.Tables[0].Rows.Count>0&& dsIt.Tables[0].Rows[0][0].ToString()!="")
            {
               CardNumber = dsIt.Tables[0].Rows[0][0].ToString();
               Month = dsIt.Tables[0].Rows[0][1].ToString();
               Year = dsIt.Tables[0].Rows[0][2].ToString();
               Address = dsIt.Tables[0].Rows[0][3].ToString();
               ZipCode = dsIt.Tables[0].Rows[0][4].ToString();
               CVV = dsIt.Tables[0].Rows[0][5].ToString();
           
            }
       
        else
        {
           u9.Visible = false;
            btn.Visible = false;
            y1.Visible = true;
        }


    }
    protected void btn_Click(object sender, EventArgs e)
    {
        string st = null;
        mySql sqlHelper = new mySql();
        DataSet dsIt = new DataSet();
        string stInsert2 = "UPDATE tblUsers SET tblUsers.CardNumber = '" + st + "', tblUsers.Month1 = " + 1 + ", tblUsers.Year1 = " + 1 + ", tblUsers.Address = '" + st + "', tblUsers.ZipCode = '" + st + "', tblUsers.Cvv = '" + st + "' WHERE (((tblUsers.UserName)='" + Session["User"].ToString() + "'))";
        sqlHelper.ChgData(stInsert2);
        Response.Redirect("Payment.aspx");
    }
}
