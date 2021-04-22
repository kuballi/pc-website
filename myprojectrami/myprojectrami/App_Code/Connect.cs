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
public class Connect
{
   
    public static string GetConnectionString()
    {
        return @"provider=Microsoft.jet.oledb.4.0; data source =" + HttpContext.Current.Server.MapPath("~/App_Data/" + "CumputerDB.mdb");
    }
}