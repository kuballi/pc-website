<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
    <link rel="icon" href="../Media/icon.png"/>
           <link rel="stylesheet" href="../CSS/Generaluser.css"/>
    <link href="../CSS/Checkout.css" rel="stylesheet" />

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
 <center>  
    <form id="form1" runat="server" action="checkout.aspx" method="post" class="cheackout" onsubmit="return Valid()">
        
     
        <img src="../Media/cards.png" alt="cards" style="margin-top:50px;" />
            <input name="cardnumber"   placeholder="Card number" id="cardnumber" type="text"/>
             <select id="month" name="month">
              <option value="0">Month</option>
              <option value="1">January</option>
              <option value="2">February</option>
              <option value="3">March</option>
              <option value="4">April</option>
              <option value="5">May</option>
              <option value="6">June</option>
              <option value="7">July</option>
              <option value="8">August</option>
              <option value="9">September</option>
              <option value="10">October</option>
              <option value="11">November</option>
              <option value="12">December</option>
              </select>
            <select id="year" name="year">
              <option value="0">Year</option>
              <option value="1">2021</option>
              <option value="2">2022</option>
              <option value="3">2023</option>
              <option value="4">2024</option>
              <option value="5">2025</option>
              <option value="6">2026</option>
              <option value="7">2027</option>
              <option value="8">2029</option>
              <option value="9">2030</option>
              <option value="10">2031</option>
              <option value="11">2032</option>
              <option value="12">2033</option>
              <option value="13">2034</option>
              <option value="14">2035</option>
              <option value="15">2036</option>
              </select>
         <input name="address1" style="margin-top:15px;" placeholder="Address" id="address1" type="text"/>
         <input name="address2" style="margin-top:15px;" placeholder="Confirm address" id="address2" type="text"/>
        
        <select style=" float:right; margin-right:25px; width:200px;" id="item" name="item">
              <option value="0">Select item</option>
             <asp:Content><%=it%></asp:Content>
              </select>
        <p class="demo"></p> 
        <table style="float:left;">
    <tr>
        <th><input name="zipcode" style="margin-top:15px; width:182px;" placeholder="Zip code" id="zipcode" type="text"/></th>
        <th><input name="cvv" style="margin-top:15px; width:182px;" placeholder="CVV" id="cvv" type="text"/></th>
    </tr>
</table>
        
<input type="submit" name="submit" value="Buy" style="margin-right: 25px;  margin-top: 50px;background-color: #1FCE6D;float: right;border-radius: 3px; border:0; color: #fff;font-size: 15px;cursor: pointer;width: 150px; height: 44px;"/>
    </form>
      </center>      
</body>
</html>
<script type="text/javascript" src="../JavaScripts/chkout.js"></script>

  
    
    
   
    
    
    
   
    
  
    