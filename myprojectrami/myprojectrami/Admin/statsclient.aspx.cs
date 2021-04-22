using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class statsclient : System.Web.UI.Page
    {
    public string tb = "";
    protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["User"] == null || Session["UserType"].ToString() != "2")
        {
            Response.Redirect("../General/login.aspx");
        }
        mySql sqlHelper = new mySql();
        DataSet dsUser = new DataSet();
        DataSet dsit = new DataSet();
        tb = "<tr><th>Name on card</th>  <th>Card Number</th> <th>Executive</th> <th>City</th> <th>Address</th> <th>Zip Code</th> <th>CVV</th> <th>Item</th></tr>";
        string shUser = " SELECT tblClient.FirstName, tblClient.LastName, tblClient.CardNumber, tblClient.Month1, tblClient.Year1, tblClient.City, tblClient.Address, tblClient.ZipCode, tblClient.CVV, tblClient.Item FROM tblClient ORDER BY tblClient.FirstName DESC;";
        dsUser = sqlHelper.GetData(shUser);
       
            for (int i = 0; i < dsUser.Tables[0].Rows.Count; i++)
            {
            
            tb = tb + "<tr>";
                tb = tb + "<td>" + dsUser.Tables[0].Rows[0][0] + " " + dsUser.Tables[0].Rows[0][1] + "</td>";
            
                tb = tb + "<td>" + dsUser.Tables[0].Rows[i][2] + "</td>";
            string year = "";
            string Year = dsUser.Tables[0].Rows[i][4].ToString();
            switch (Year)
            {
                case "1":
                    year = "21";

                    break;
                case "2":
                    year = "22";

                    break;
                case "3":
                    year = "23";

                    break;

                case "4":
                    year = "24";


                    break;

                case "5":
                    year = "25";



                    break;
                case "6":
                    year = "26";


                    break;
                case "7":
                    year = "27";


                    break;

                case "8":
                    year = "29";


                    break;
                case "9":
                    year = "30";

                    break;
                case "10":
                    year = "31";

                    break;
                case "11":
                    year = "32";

                    break;
                case "12":
                    year = "33";

                    break;
                case "13":
                    year = "34";

                    break;
                case "14":
                    year = "35";

                    break;
                case "15":
                    year = "36";
                    break;
                case "16":
                    year = "28";
                    break;
            }
            tb = tb + "<td>" + dsUser.Tables[0].Rows[i][3] + "/" + year + "</td>";
            switch (dsUser.Tables[0].Rows[i][5].ToString())
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
                tb = tb + "<td>" + dsUser.Tables[0].Rows[i][6] + "</td>";
                tb = tb + "<td>" + dsUser.Tables[0].Rows[i][7] + "</td>";
                tb = tb + "<td>" + dsUser.Tables[0].Rows[i][8] + "</td>";
            string shit = "SELECT tblitem.ItemId, tblitem.ItemName FROM tblitem WHERE(((tblitem.ItemId) ="+ dsUser.Tables[0].Rows[i][9].ToString() + "));";

            dsit = sqlHelper.GetData(shit);
            tb = tb + "<td>" + dsit.Tables[0].Rows[0][1] + "</td>";


            tb = tb + "</tr>";
            }
        }
    }
    
