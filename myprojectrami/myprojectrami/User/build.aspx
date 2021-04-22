<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="build.aspx.cs" Inherits="build" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>build you'r pc </title>
    <link rel="icon" href="../Media/icon.png"/>
       <link rel="stylesheet" href="../CSS/Generaluser.css"/>
    <link href="../CSS/Build.css" rel="stylesheet" />

</head>
<body>
<nav>
        <ul>
            <li>
                <a href="shopping.aspx">Shop</a>
            </li>
            <li>
                <a href="build.aspx">Build</a>
            </li>
            <li>
                <a href="contactus.aspx">Contact us</a>
            </li>
             <li class="gender">
                  <%
                   if (Session["UserType"].ToString()=="2")
                   {
                 Response.Write("<a href="+ "account.aspx" +"><img src=" +"../Media/admin.png"+" alt="+"Avatar"+" class="+"avatar-img "+"></a>");
                   }
                   else if (Session["Gender"].ToString()=="1")
                   {
                       Response.Write("<a href="+ "account.aspx" +"><img src=" +"../Media/userm.png"+" alt="+"Avatar"+" class="+"avatar-img "+"></a>");
                   }
                   else if (Session["Gender"].ToString()=="2")
                   {
                       Response.Write("<a href="+ "account.aspx" +"><img src=" +"../Media/userf.jpg"+" alt="+"Avatar"+" class="+"avatar-img "+"></a>");
                   }
                 
                 %>
            </li>
              <li class="logout">
                <a href="../Admin/logout.aspx">Logout</a>
            </li>
            
           
        </ul>
    </nav>

    <form id="form1" runat="server" method="post" action="build.aspx" onsubmit="return Vaild()"  >
            <div class="banner-image"></div>
        <div class="build">
            <h2 style="text-align:center; padding-top:35px;">Build you'r pc </h2>
            <table>
                <tr>
                <td>
               <select style=" float:right; margin-top:75px; width:750px; height:65px;" id="cpu" name="cpu">
              <option value="0">Select CPU</option>
             <%=cpu%>
              </select>
                 </td>
                </tr>
                <tr>
                <td>
               <select style=" float:right; margin-top:75px; width:750px; height:65px;" id="gpu" name="gpu">
              <option value="0">Select GPU</option>
           <%=gpu%>
              </select>
                 </td>
                </tr>
                <tr>
                    <td>
               <select style=" float:right; margin-top:75px; width:750px; height:65px;" id="mobo" name="mobo">
              <option value="0">Select Mother borad</option>
             <%=mobo%>
              </select>
                 </td>
                </tr>
                <tr>
                    <td>
               <select style=" float:right; margin-top:75px; width:750px; height:65px;" id="ram" name="ram">
              <option value="0">Select RAM</option>
             <%=ram%>
              </select>
                 </td>
                </tr>
                <tr>
                <td> 
               <select style=" float:right; margin-top:75px; width:750px; height:65px;" id="cf" name="cf">
              <option value="0">Select Cooling Fans</option>
             <%=cf%>
              </select>
                </td>
                </tr>
                <tr>
                <td>
                <select style=" float:right; margin-top:75px; width:750px; height:65px;" id="ps" name="ps">
              <option value="0">Select Power Supply</option>
             <%=ps%>
              </select>
                </td>
                </tr>
                  <tr>
                <td>
                <select style=" float:right; margin-top:75px; width:750px; height:65px;" id="ssd" name="ssd">
              <option value="0">Select SSD</option>
             <%=ssd%>
              </select>
                </td>
                </tr>
                <tr>
                <td>
               <select style=" float:right; margin-top:75px; width:750px; height:65px;" id="bun" name="bun">
              <option value="0">Select Bundle</option>
            <%=bun%>
              </select>
                    </td>
                </tr>
            </table>
            <asp:Button runat="server"  ID="btn1" Text="Save" style="width:150px; height:44px; background-color:#0aaff1; border-radius:5px; border-color:transparent; float:left; margin-left:15px; margin-top:85px; font-size:22px; color:white;" OnClick="btn1_Click" OnClientClick="submit" />
             <asp:Button runat="server"  ID="btn"  Text="Buy"  style="width:150px; height:44px; background-color:#fdc60a; border-radius:5px; border-color:transparent; float:right; margin-right:50px; margin-top:88px; font-size:22px; color:white;" OnClick="btn_Click" OnClientClick="submit" />
             <asp:Label Font-underline="False" Font-Bold="True" Font-Size="Larger" runat="server" ID="fail" ForeColor="Red" />

        </div>
    </form>
</body>
</html>
<script type="text/javascript" src="../JavaScripts/build.js"></script>
