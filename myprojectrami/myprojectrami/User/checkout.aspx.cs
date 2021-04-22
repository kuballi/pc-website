using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class checkout : System.Web.UI.Page
{
    public string it = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null || Session["UserType"].ToString() == null)
        {
            Response.Redirect("../General/login.aspx");
        }
        mySql sqlHelper = new mySql();
        SendEmail sendemail = new SendEmail();
        DataSet dsIt = new DataSet();
        string stIt = "SELECT tblitem.ItemName, tblitem.Price FROM tblitem;";
        dsIt = sqlHelper.GetData(stIt);
        for (int i = 0; i < dsIt.Tables[0].Rows.Count; i++)
        {
            
            it += "<option  value=" + i +"" + ">"+ dsIt.Tables[0].Rows[i][0].ToString()+"</option>";

        }
        if (IsPostBack)
        {
            string fName = Session["FirstName"].ToString();
            string lname = Session["LastName"].ToString();
            string cardnumber = Request.Form["cardnumber"];
            string month = Request.Form["month"];
            string year = Request.Form["year"];
            string address = Request.Form["address1"];
            string item = Request.Form["item"];
            string zipcode = Request.Form["zipcode"];
            string cvv = Request.Form["cvv"];
            string city = Session["City"].ToString();
            string email= Session["Email"].ToString();
            string stInsert = "INSERT INTO tblClient ( FirstName, LastName, CardNumber, Month1, Year1, City, Address, ZipCode, CVV, Item ) values('" + fName + "', '" + lname + "', '" + cardnumber + "', " + month + "," + year + ", " + city + ",'" + address + "','" + zipcode + "','" + cvv + "'," + item + ")";
            sqlHelper.ChgData(stInsert);
            string stInsert2 = "UPDATE tblUsers SET tblUsers.CardNumber = '" + cardnumber + "', tblUsers.Month1 = " + month + ", tblUsers.Year1 = " + year + ", tblUsers.Address = '" + address + "', tblUsers.ZipCode = '" + zipcode + "', tblUsers.Cvv = '" + cvv + "' WHERE (((tblUsers.UserName)='" + Session["User"].ToString() + "'))";
            sqlHelper.ChgData(stInsert2);
            sendemail.Send(email, "Thanks for you'r bought.", "Hello" + " " + fName + " " + lname + " " + "I'm glad you bought in my website.", "");
            Response.Redirect("shopping.aspx");
        }
        
    }
}
