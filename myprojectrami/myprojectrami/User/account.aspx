<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account-info</title>
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
                     <div class="card" style="margin: auto; margin-top:109px;">
            <h1 style="font-size:22px; margin-left:30px; margin-top:50px; text-align:center;">Account info</h1>
            <table>
                <tr>
                    <th>
                     <asp:Content>
                <div class="info" style="margin-top:105px; text-align:left;  margin-left:15px;">
                <h6 style="color:#a1a4b5; margin-top:2px; text-align:left; margin-left:10px; ">User Name</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%Response.Write(Session["User"].ToString());%></h4>  
                 </div></asp:Content></th>
                    <th> <asp:Content>
                <div class="info" style="margin-top:105px;  margin-left:80px;">
                <h6 style="color:#a1a4b5; margin-top:2px; margin-left:10px; text-align:left; text-align:left; ">Email Address</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%Response.Write(Session["Email"].ToString());%></h4>  
                 </div></asp:Content></th>
                </tr>
                </table>
            <table style="margin-left:30px;margin-top:30px;">
                <tr>
                  <th style=" font-size:22px;  text-align:left;" colspan="2">Personal details</th>
                    </tr>
                 <tr>
                 <th>
                     <asp:Content>
                <div class="info" style="margin-top:30px; text-align:left;  margin-left:-13px;">
                <h6 style="color:#a1a4b5; margin-top:2px; text-align:left; margin-left:10px; ">First Name</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%Response.Write(Session["FirstName"].ToString());%></h4>  
                 </div></asp:Content></th>
                    <th> <asp:Content>
                <div class="info" style="margin-top:30px;  margin-left:80px;">
                <h6 style="color:#a1a4b5; margin-top:2px; margin-left:10px; text-align:left; text-align:left; ">Last Name</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%Response.Write(Session["LastName"].ToString());%></h4>  
                 </div></asp:Content></th>
                    
                </tr>
               
                  <tr>
                 <th>
                     <asp:Content>
                <div class="info" style="margin-top:30px; text-align:left;  margin-left:-13px;">
                <h6 style="color:#a1a4b5; margin-top:2px; text-align:left; margin-left:10px; ">Phone Number</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%Response.Write("+972"+" "+Session["Phonenumber"].ToString());%></h4>  
                 </div></asp:Content></th>
                    <th> <asp:Content>
                <div class="info" style="margin-top:30px;  margin-left:80px;">
                <h6 style="color:#a1a4b5; margin-top:2px; margin-left:10px; text-align:left; text-align:left; ">city</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%
                 switch (Session["City"].ToString())
                 {
                  case "1":
                     Response.Write("Gan Yavne") ;
                    break;
                case "2":
                   Response.Write( "Tel Aviv");                                                               
                     
                    break;
                case "3":
              Response.Write("Jerusalem");  
                    break;
                case "4":
                Response.Write( "Ashdod");  
                    break;
                case "5":
                    ;Response.Write("Eilat");  
                    break;
                case "6":
                  Response.Write("Heifa");  
                    break;
                case "7":
                     Response.Write("Ber Sheva" );  
                    break;
                case "8":
                   Response.Write("Ramle");  
                    break;
                case "9":
                    Response.Write("Netanya");  
                    break;
                    case "10":
                    Response.Write("Other");  
                    break;

                  }
                
                %></h4>  
                 </div></asp:Content>
                    </th>
                    
                </tr>
            </table>
        </div>
                 </th>
            </tr>
        </table>
       
 
           
    
</body>
</html>
