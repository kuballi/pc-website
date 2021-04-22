<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
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
                         <asp:Label  runat="server" ID="y1" Text="You haven't entered a credit card yet." Font-Bold="true" ForeColor="Red" Visible="false"/>
                         <asp:Panel ID="u9" runat="server" Visible="false">
            <h1 style="font-size:22px; margin-left:30px; margin-top:50px; text-align:center;">Credit Card</h1>
            <table>
                <tr>
                    <th>
                     <asp:Content>
                <div class="info" style="margin-top:105px; text-align:left;  margin-left:15px;">
                <h6 style="color:#a1a4b5; margin-top:2px; text-align:left; margin-left:10px; ">Name on card</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%Response.Write(Session["FirstName"].ToString() +" "+Session["LastName"].ToString());%></h4>  
                 </div></asp:Content></th>
                    <th> <asp:Content>
                <div class="info" style="margin-top:105px;  margin-left:80px;">
                <h6 style="color:#a1a4b5; margin-top:2px; margin-left:10px; text-align:left; text-align:left; ">Card Number</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%=CardNumber%></h4>  
                 </div></asp:Content></th>
                </tr>
                </table>
            <table style="margin-left:30px;margin-top:30px;">
                 <tr>
                 <th>
                     <asp:Content>
                <div class="info" style="margin-top:30px; text-align:left;  margin-left:-13px;">
                <h6 style="color:#a1a4b5; margin-top:2px; text-align:left; margin-left:10px; ">Executive</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;">
                    <%
                        string  year="";
                       
                        switch(Year)
                        {
                            case "1": year = "21";

                                break;
                            case "2":  year = "22";

                                break;
                            case "3": year = "23";

                                break;

                            case "4":   year = "24";


                                break;

                            case "5":year = "25";



                                break;
                            case "6":  year = "26";


                                break;
                            case "7": year = "27";


                                break;

                            case "8":   year = "29";


                                break;
                            case "9":  year = "30";

                                break;
                            case "10": year = "31";

                                break;
                            case "11": year = "32";

                                break;
                            case "12": year = "33";

                                break;
                            case "13": year = "34";

                                break;
                            case "14":   year = "35";

                                break;
                            case "15":  year = "36";
                                break;
                            case "16":  year = "28";
                                break;
                        }
                        Response.Write(Month + "/" + year);
                %></h4>  
                 </div></asp:Content></th>
                    <th> <asp:Content>
                <div class="info" style="margin-top:30px;  margin-left:80px;">
                <h6 style="color:#a1a4b5; margin-top:2px; margin-left:10px; text-align:left; text-align:left; ">Address</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%=Address%></h4>  
                 </div></asp:Content></th>
                    
                </tr>
               
                  <tr>
                 <th>
                     <asp:Content>
                <div class="info" style="margin-top:30px; text-align:left;  margin-left:-13px;">
                <h6 style="color:#a1a4b5; margin-top:2px; text-align:left; margin-left:10px; ">Zip Code</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"><%=ZipCode%></h4>  
                 </div></asp:Content></th>
                    <th> <asp:Content>
                <div class="info" style="margin-top:30px;  margin-left:80px;">
                <h6 style="color:#a1a4b5; margin-top:2px; margin-left:10px; text-align:left; text-align:left; ">CVV</h6>
                <h4 style=" color:#a1a4b5;  margin-left:11px; text-align:left;  margin-top:12px;"> <%=CVV %></h4>  
                 </div></asp:Content>
                    </th>
                    
                </tr>
            </table>
           
          </asp:Panel>
           <form id="from1" method="post" runat="server" >            
           <asp:Button OnClick="btn_Click" Id="btn" runat="server" Visible="false" Text="Delete" style="width:150px; height:44px; background-color:#0aaff1; border-radius:5px; border-color:transparent; float:left; margin-left:15px; margin-top:35px; font-size:22px; color:white;" />
              </form>
        </div>
                    
                 </th>
            </tr>
        </table>
   
</body>
</html>
