using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class build : System.Web.UI.Page
    {
   public string cpu = "";
   public string mobo = "";
   public string gpu = "";
   public string ram = "";
   public string ssd = "";
   public string cf = "";
   public string ps = "";
   public string bun = "";
        protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["User"] == null || Session["UserType"].ToString() == null)
        {
            Response.Redirect("../General/login.aspx");
        }
     
        mySql sqlHelper = new mySql();
        SendEmail sendemail = new SendEmail();
        DataSet dscpu = new DataSet();
        DataSet dsmobo = new DataSet();
        DataSet dsgpu = new DataSet();
        DataSet dsram = new DataSet();
        DataSet dsssd = new DataSet();
        DataSet dscf = new DataSet();
        DataSet dsps = new DataSet();
        DataSet dsbun = new DataSet();
        string stcpu = "SELECT tblCPU.CPU, tblCPU.CPUPrice FROM tblCPU;";
        string stmobo = "SELECT tblMOBO.MOBOName, tblMOBO.MOBOPrice FROM tblMOBO;";
        string stgpu = "SELECT tblGPU.GraphicsCard, tblGPU.GPUPrice FROM tblGPU;";
        string stram = "SELECT tblRAM.RAM, tblRAM.RAPrice FROM tblRAM;";
        string stssd = "SELECT tblSSD.SSDName, tblSSD.SSDPrice FROM tblSSD;";
        string stcf = "SELECT tblCoolingFans.CoolingFansName, tblCoolingFans.CoolingFansPrice FROM tblCoolingFans;";
        string stps = "SELECT tblPS.PSName, tblPS.PSPrice FROM tblPS;";
        string stbun = "SELECT tblBundle.BundleName, tblBundle.BundlePrice FROM tblBundle;";
        dscpu = sqlHelper.GetData(stcpu);
        dsmobo = sqlHelper.GetData(stmobo);
        dsgpu = sqlHelper.GetData(stgpu);
        dsram = sqlHelper.GetData(stram);
        dsssd = sqlHelper.GetData(stssd);
        dscf = sqlHelper.GetData(stcf);
        dsps = sqlHelper.GetData(stps);
        dsbun = sqlHelper.GetData(stbun);
        for (int i = 0; i < dscpu.Tables[0].Rows.Count; i++)
        {

            cpu += "<option  value=" + i + "" + ">" + dscpu.Tables[0].Rows[i][0].ToString() + "</option>";

        }
        
        for (int i = 0; i < dsmobo.Tables[0].Rows.Count; i++)
        {

            mobo += "<option  value=" + i + "" + ">" + dsmobo.Tables[0].Rows[i][0].ToString() + "</option>";

        }
        for (int i = 0; i < dsgpu.Tables[0].Rows.Count; i++)
        {

            gpu += "<option  value=" + i + "" + ">" + dsgpu.Tables[0].Rows[i][0].ToString() + "</option>";

        }
        for (int i = 0; i < dsram.Tables[0].Rows.Count; i++)
        {

            ram += "<option  value=" + i + "" + ">" + dsram.Tables[0].Rows[i][0].ToString() + "</option>";

        }
        for (int i = 0; i < dscf.Tables[0].Rows.Count; i++)
        {

            cf += "<option  value=" + i + "" + ">" + dscf.Tables[0].Rows[i][0].ToString() + "</option>";

        }
        for (int i = 0; i < dsps.Tables[0].Rows.Count; i++)
        {

            ps += "<option  value=" + i + "" + ">" + dsps.Tables[0].Rows[i][0].ToString() + "</option>";

        }
        for (int i = 0; i < dsssd.Tables[0].Rows.Count; i++)
        {

            ssd += "<option  value=" + i + "" + ">" + dsssd.Tables[0].Rows[i][0].ToString() + "</option>";

        }
        for (int i = 0; i < dsbun.Tables[0].Rows.Count; i++)
        {

            bun += "<option  value=" + i + "" + ">" + dsbun.Tables[0].Rows[i][0].ToString() + "</option>";

        }
       
       
    }
    protected bool chkdata(string stcpu, string stgpu, string stmobo, string stram, string stcf, string stssd, string stps, string stbun)
    {

        if (stcpu == "0")
        {
            fail.Text = "Please select a CPU.";
            return false;
        }
        if (stgpu == "0")
        {
            fail.Text = "Please select a GPU.";
            return false;
        }
        if (stmobo == "0")
        {
            fail.Text = "Please select a motherboard.";
            return false;
        }
        if (stram == "0")
        {
            fail.Text = "Please select a RAM.";
            return false;
        }
        if (stcf == "0")
        {
            fail.Text = "Please select a cooling fans.";
            return false;
        }
        if (stps == "0")
        {
            fail.Text = "Please select a power supply.";
            return false;
        }
        if (stbun == "0")
        {
            fail.Text = "Please select a bundle.";
            return false;
        }
        if (stssd == "0")
        {
            fail.Text = "Please select a SSD.";
            return false;
        }
        return true;

    }
    protected bool getdata()
    {

        if (IsPostBack)
        {
            int price = 0;
            string stprice = "";
            string stcpu = Request.Form["cpu"];
            string stgpu = Request.Form["gpu"];
            string stmobo = Request.Form["mobo"];
            string stram = Request.Form["ram"];
            string stcf = Request.Form["cf"];
            string stssd = Request.Form["ssd"];
            string stps = Request.Form["ps"];
            string stbun = Request.Form["bun"];
            mySql sqlHelper = new mySql();
            DataSet dsprice = new DataSet();
            SendEmail sendemail = new SendEmail();
            bool flag=chkdata(stcpu, stgpu,  stmobo,  stram,  stcf,  stssd,  stps, stbun);
            if (flag)
            {
                stprice = "SELECT tblCPU.CPUid, tblCPU.CPUPrice FROM tblCPU WHERE (((tblCPU.CPUid)=" + stcpu + "));";
                dsprice = sqlHelper.GetData(stprice);
                price += Convert.ToInt32(dsprice.Tables[0].Rows[0][1]);
                stprice = "SELECT tblGPU.GraphicsCardId,tblGPU.GPUPrice FROM tblGPU WHERE (((tblGPU.GraphicsCardId)=" + stgpu + "));";
                dsprice = sqlHelper.GetData(stprice);
                price += Convert.ToInt32(dsprice.Tables[0].Rows[0][1]);
                stprice = "SELECT tblMOBO.MOBOid, tblMOBO.MOBOPrice FROM tblMOBO WHERE (((tblMOBO.MOBOid)=" + stmobo + "));";
                dsprice = sqlHelper.GetData(stprice);
                price += Convert.ToInt32(dsprice.Tables[0].Rows[0][1]);
                stprice = "SELECT tblRAM.RAMId, tblRAM.RAPrice FROM tblRAM WHERE (((tblRAM.RAMId)=" + stram + "));";
                dsprice = sqlHelper.GetData(stprice);
                price += Convert.ToInt32(dsprice.Tables[0].Rows[0][1]);
                stprice = "SELECT tblCoolingFans.CoolingFansid, tblCoolingFans.CoolingFansPrice FROM tblCoolingFans WHERE (((tblCoolingFans.CoolingFansid)=" + stcf + "));";
                dsprice = sqlHelper.GetData(stprice);
                price += Convert.ToInt32(dsprice.Tables[0].Rows[0][1]);
                stprice = "SELECT tblSSD.SSDiD, tblSSD.SSDPrice FROM tblSSD WHERE (((tblSSD.SSDiD)= " + stssd + "));";
                dsprice = sqlHelper.GetData(stprice);
                price += Convert.ToInt32(dsprice.Tables[0].Rows[0][1]);
                stprice = "SELECT tblPS.PSiD, tblPS.PSPrice FROM tblPS WHERE (((tblPS.PSiD)=" + stps + "));";
                dsprice = sqlHelper.GetData(stprice);
                price += Convert.ToInt32(dsprice.Tables[0].Rows[0][1]);
                stprice = "SELECT tblBundle.BundleId, tblBundle.BundlePrice FROM tblBundle WHERE (((tblBundle.BundleId)=" + stbun + "));";
                dsprice = sqlHelper.GetData(stprice);
                price += Convert.ToInt32(dsprice.Tables[0].Rows[0][1]);
                string name_pc = Session["User"].ToString() + "_" + sendemail.GetCode(4);
                string stpc = "insert into tblPc  ( CPU, MOBO, RAM, SSD, GPU, PowerSupply, [Cooling Fans], Bundle, Price ) values(" + stcpu + ", " + stmobo + ", " + stram + ", " + stssd + ", " + stgpu + ", " + stps + ", " + stcf + ", " + stbun + ", " + price + ")";
                sqlHelper.ChgData(stpc);
                string stit = "insert into tblitem ( ItemName, Price ) values('" + name_pc + "', " + price + ")";
                sqlHelper.ChgData(stit);
                sendemail.Send(Session["Email"].ToString(), "Thanks for you'r build.", "Hello" + " " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString() + " " + "I'm glad you build you'r pc in my website.You'r pc name is" + " " + name_pc, "");
                return true;
            }
            

        }
        return false;
    }



    
    protected void btn_Click(object sender, EventArgs e)
    {
        
        if (getdata())
        {
            Response.Redirect("checkout.aspx");
        }
       
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        getdata();
        Response.Redirect("shopping.aspx");

    }
}
