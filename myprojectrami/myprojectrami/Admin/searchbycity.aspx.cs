using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class searchbycity : System.Web.UI.Page
{
    public string tb = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null || Session["UserType"].ToString() != "2")
        {
            Response.Redirect("../General/login.aspx");
        }
        if (IsPostBack)
        {
            mySql sqlHelper = new mySql();
            DataSet dsUser = new DataSet();
            tb = "<tr> <th>User Name</th> <th>First Name</th> <th>Last Name</th> <th>Phone number</th> <th>Email</th> <th>Gender</th> <th>City</th> <th>Password</th> <th>User Type</th> </tr>";
            string city = Request.Form["city1"];
            string stUser = "SELECT tblUsers.UserName, tblUsers.FirstName, tblUsers.LastName, tblUsers.Phonenumber, tblUsers.Email, tblUsers.Gender, tblUsers.City, tblUsers.Pass, tblUsers.UserType FROM tblUsers WHERE (((tblUsers.City)= " + city + ")); ";
            dsUser = sqlHelper.GetData(stUser);
            if (dsUser.Tables[0].Rows.Count > 0)
            {
                
                SearchByCity.Visible = true;
                r.Visible = false;
                for (int i = 0; i < dsUser.Tables[0].Rows.Count; i++)
                {
                    tb = tb + "<tr>";
                    tb = tb + "<td>" + dsUser.Tables[0].Rows[i][0] + "</td>";
                    tb = tb + "<td>" + dsUser.Tables[0].Rows[i][1] + "</td>";
                    tb = tb + "<td>" + dsUser.Tables[0].Rows[i][2] + "</td>";
                    tb = tb + "<td>" + "+972" + " " + dsUser.Tables[0].Rows[i][3] + "</td>";
                    tb = tb + "<td>" + dsUser.Tables[0].Rows[i][4] + "</td>";
                    switch (dsUser.Tables[0].Rows[i][5].ToString())
                    {
                        case "1":
                            tb = tb + "<td>" + "Male" + "</td>";
                            break;
                        case "2":
                            tb = tb + "<td>" + "Female" + "</td>";
                            break;
                    }
                    switch (dsUser.Tables[0].Rows[i][6].ToString())
                    {
                        case "1":
                            tb = tb + "<td>" + "Gan Yavne" + "</td>";
                            break;
                        case "2":
                            tb = tb + "<td>" + "Tel Aviv" + "</td>";
                            break;
                        case "3":
                            tb = tb + "<td>" + "Jerusalem" + "</td>";
                            break;
                        case "4":
                            tb = tb + "<td>" + "Ashdod" + "</td>";
                            break;
                        case "5":
                            tb = tb + "<td>" + "Eilat" + "</td>";
                            break;
                        case "6":
                            tb = tb + "<td>" + "Heifa" + "</td>";
                            break;
                        case "7":
                            tb = tb + "<td>" + "Ber Sheva" + "</td>";
                            break;
                        case "8":
                            tb = tb + "<td>" + "Ramle" + "</td>";
                            break;
                        case "9":
                            tb = tb + "<td>" + "Netanya" + "</td>";
                            break;
                        case "10":
                            tb = tb + "<td>" + "Other" + "</td>";
                            break;

                    }
                    tb = tb + "<td>" + dsUser.Tables[0].Rows[i][7] + "</td>";
                    switch (dsUser.Tables[0].Rows[i][8].ToString())
                    {
                        case "1":
                            tb = tb + "<td>" + "User" + "</td>";
                            break;
                        case "2":
                            tb = tb + "<td>" + "Admin" + "</td>";
                            break;
                    }

                    tb = tb + "</tr>";
                }
            }
            else
            {
                r.Visible = true;
                SearchByCity.Visible = false;
            }


        }
    }
}

