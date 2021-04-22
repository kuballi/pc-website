using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class reply : System.Web.UI.Page
    {
    public string tb = "";
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["User"] == null || Session["UserType"].ToString() != "2")
        {
            Response.Redirect("../General/login.aspx");
        }

        mySql sqlHelper = new mySql();
        DataSet dsDel = new DataSet();
        DataSet dsUser = new DataSet();
        SendEmail sendemail = new SendEmail();
        string stDel = "SELECT tblcontact.UserId, tblcontact.FirstName, tblcontact.LastName, tblcontact.Email, tblcontact.Subject, tblcontact.Massage FROM tblcontact  ";
         dsDel = sqlHelper.GetData(stDel);
    
        string a = "a";
        string m = "Massage";
        string y = "You'r massage";
        string read = "readonly";
        dsUser = sqlHelper.GetData(stDel);
        tb = "<tr> <th>Id</th> <th>Full name</th> <th>Email</th> <th>Subject</th> <th>Massage</th> <th>You'r massage</th> <th>Send</th> </tr>";
        for (int i = 0; i < dsUser.Tables[0].Rows.Count; i++)
        {

            tb = tb + "<tr>";
            tb = tb + "<td   >" + dsUser.Tables[0].Rows[i][0] + "</td>";
            tb = tb + "<td  >" + dsUser.Tables[0].Rows[i][1] +" "+ dsUser.Tables[0].Rows[i][2]+ "</td>";
            tb = tb + "<td  >" + dsUser.Tables[0].Rows[i][3] + "</td>";
            tb = tb + "<td  >" + dsUser.Tables[0].Rows[i][4] + "</td>";
            tb = tb + "<td>"+ "<textarea style='" + read + "' style='" + read + "' +style='" + a + "'  type='" + a + "'    + rows =" + 7 + "placeholder ='" + y + "'+ " + " >"  +dsUser.Tables[0].Rows[i][5] + "</textarea>"+ "</td>";  
            tb = tb + "<td >" + "<textarea type='" + a + "'  name='" + m + "' + rows =" + 7 + " placeholder ='" + y + "'+ " + " >" + "</textarea>" + "</td>"; 
            tb = tb + "<td  > <button  type=" + "submit"  + " onclick=Delete(" + i + ")" + ">Send</button>" + "</td>";

            tb = tb + "</tr>";
            if (IsPostBack)
            {
                string subject = dsUser.Tables[0].Rows[i][4].ToString();
                string massage = Request.Form["Massage"];
                sendemail.Send(dsUser.Tables[0].Rows[i][3].ToString(), subject, massage, "");
                
                int rownum = int.Parse(Request.Form["Line"]);
                string stDelC = "DELETE tblcontact.UserId FROM tblcontact WHERE (((tblcontact.UserId)=" + dsDel.Tables[0].Rows[rownum][0].ToString() + "));";
                sqlHelper.ChgData(stDelC);
                

            }
        }
    }
    }
