﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2FA.aspx.cs" Inherits="Twofactorauthentication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Two-factor authentication</title>
    <link rel="icon" href="../Media/icon.png"/>
<link rel="stylesheet" href="../CSS/Generaluser.css"/>
<link rel="stylesheet" href="../CSS/Account.css"/>

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
    <table style="margin:auto;">
            <tr>
                <th>
               <div class="menu" >
               <ul>
                <li><a href="account.aspx">Account info</a></li>
                <li><a href="Payment.aspx">Payment</a></li>
                <li><a href="password.aspx">Change password</a></li>
                <li><a href="username.aspx">Change username</a></li>
                <li><a href="email.aspx">Change email address</a></li>
                 <li><a href="2FA.aspx">Two-factor authentication</a></li>
                <li><a href="delete.aspx">Delete account</a></li>
                 <li><a href="../Admin/logout.aspx">Log out</a></li>
            </ul>
        </div>
        </th>
         <th>
         
              <form action="2FA.aspx" runat="server"  method="post" >
              
                   <div class="card" style="margin: auto; margin-top:109px;">
                
                             <h1 style="font-size:22px; margin-left:30px; margin-top:50px; text-align:center;">Two-factor authentication </h1>
                 
                     <table>
                         <tr>
                             <td><p style="text-align:left; font-size:15px; width: 500px;  float:left; margin-left:15px; margin-top:50px;">Two-Factor Authentication (2FA) can be used to help protect your account from unauthorized access by requiring you to enter a security code when you sign in.</p></td>
                         </tr>
                         <tr>
                         <td><strong style="text-align:left; font-size:15px; width: 500px;  float:left; margin-left:15px; margin-top:50px;  ">Use a security code sent to your email address as your Two-Factor Authentication (2FA). The security code will be sent to the address associated with your account. You’ll need to use it in when you sign in.</strong></td>
                         </tr>
                     </table>
                       <asp:Button ID="btn4"  runat="server" type="submit" name="submit" value="Enable" style="width:350px; height:44px; background-color:#0aaff1; border-radius:5px; border-color:transparent; float:left; margin-left:15px; margin-top:35px; font-size:22px; color:white;" OnClick="btn4_Click" />
               </div>
                 </form>
            
        </th>

      </tr>
      </table>
   
</body>
</html>