<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
     <link rel="stylesheet" href="../CSS/Generaluser.css"/>
    <link href="../CSS/contactus.css" rel="stylesheet" />
    <title>Contact Us</title>
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
    <form id="form1" runat="server"  onsubmit="return Valid()" action="contactus.aspx" method="post">
    <div class="Contactus">
        <h2>Contact Us</h2>
            <input name="FName" placeholder="First Name" id="FName" type="text" />
            <input name="LName" placeholder="Last Name" id="LName" type="text" />
              <input name="Email" placeholder="E-Mail Address" id="Email" type="text" />
            <input name="Subject" placeholder="Subject" id="Subject" type="text" />
            <textarea id="Massage" name="Massage" rows="6"  placeholder="You'r massage"></textarea>
            <input class="animated" value="Send" type="submit"/>
             <asp:Label Font-underline="False" Font-Bold="True" Font-Size="Larger" runat="server" ID="fail" ForeColor="Red" ></asp:Label>

        
    </div>
    </form>
</body>
</html>
<script type="text/javascript" src="../JavaScripts/chkcontact.js"></script>
