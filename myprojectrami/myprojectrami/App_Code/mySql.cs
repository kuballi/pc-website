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

public class mySql
{

    public DataSet GetData(string sqlstr)
    {

        
        OleDbConnection conn = new OleDbConnection(Connect.GetConnectionString());
        OleDbDataAdapter da = new OleDbDataAdapter(sqlstr, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public void ChgData(string sqlstr)
    {

        OleDbConnection conn = new OleDbConnection(Connect.GetConnectionString());
        OleDbCommand change = new OleDbCommand(sqlstr, conn);
        conn.Open();
        change.ExecuteNonQuery();
        conn.Close();
    }
    
}