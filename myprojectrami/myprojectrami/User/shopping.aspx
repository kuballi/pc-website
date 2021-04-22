<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopping.aspx.cs" Inherits="shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping</title>
    <link rel="icon" href="../Media/icon.png"/>
           <link rel="stylesheet" href="../CSS/Generaluser.css"/>
    <link href="../CSS/Shopping.css" rel="stylesheet"/>
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

    <form id="form1" runat="server">
        <div class="banner-image"></div>
        
        <center>
        <table style="margin-top:15px">
            <tr>
                <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:122px; height:61px;" src="../Media/ASUS.png" alt="Asus Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/AsusROGStrixGT35.png" alt="Asus ROG Strix GT35" />
                        <p>Gaming brand pc Asus ROG Strix GT35</p>
                        <strong><h3 id=""  style="margin-top:35px;  margin-right:3px;">2,739$</h3></strong>
                       <a href="checkout.aspx"><button type="button" style="margin-top:50px;" class="buy"><img src="../Media/shop.png" alt="shop" /></button></a>
                         
                    </div>
                </th>
                <th>  
                    <div class="card">
                         <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/ASUS.png" alt="Asus Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/AsusROGStrixG15.png" alt="Asus ROG Strix G15" />
                        <p>Laptop for gamers Asus ROG Strix G15 - black</p>
                        <strong><h3 style="margin-top:35px; margin-right:3px;">1,577$</h3></strong>
                       <a href="checkout.aspx"> <button type="button" class="buy"><img src="../Media/shop.png" alt="shop" /></button></a>
                         
                    </div>
                </th>
                <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/ASUS.png" alt="Asus Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/AsusVG279Q27LEDIPS.png" alt="Asus VG279Q27 LED IPS" />
                        <p>Gaming PC screen 144HZ Asus VG279Q27 27In</p>
                        <strong><h3 style="margin-top:35px; margin-right:3px;">532$</h3></strong>
                        <a href="checkout.aspx"><button type="button" class="buy"><img src="../Media/shop.png" alt="shop" /></button></a>
                    </div>
                </th>
                <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/ASUS.png" alt="Asus Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/AsusVG279M27LED.png" alt="Asus VG279 M27 LED" />
                        <p>Gaming PC screen 240HZ Asus VG279QM 27In</p>
                        <strong><h3 style="margin-top:35px; margin-right:3px;">694$</h3></strong>
                        <a href="checkout.aspx"><button type="button" class="buy"><img src="../Media/shop.png" alt="shop"/></button></a>
                    </div>
                </th>
                <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/ASUS.png" alt="Asus Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/AsusROGStrixGA15.png" alt="Asus ROG Strix GA15" />
                        <p>Gaming brand pc Asus ROG Strix GA15</p>
                        <strong><h3 style="margin-top:35px; margin-right:3px;">1,673$</h3></strong>
                       <a href="checkout.aspx"> <button type="button" class="buy" style="margin-top:50px;"><img src="../Media/shop.png" alt="shop" /></button></a>
                    </div>
                    
                </th>
            </tr>




            <tr>
                  <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/HYPERX.png" alt="Hyperx Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/HyperXCloud.png" alt="HyperX Cloud" />
                        <p>Wireless gamer headphones HyperX Cloud Flight - balck</p>
                        <strong><h3 style="margin-top:35px; margin-right:3px;">149$</h3></strong>
                       <a href="checkout.aspx"> <button type="button" class="buy"><img src="../Media/shop.png" alt="shop" /></button></a>
                    </div>
                </th>
                <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/steelseries.png" alt="steelseries Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/SteelSeriesArctis5.png" alt="Steel Series Arctis 5" />
                        <p>Gamer headphones SteelSeries Arctis 5 DTS 7.1 Surround USB white</p>
                        <strong><h3 style="margin-top:35px; margin-right:3px;">126$</h3></strong>
                       <a href="checkout.aspx"> <button type="button" class="buy"><img src="../Media/shop.png" alt="shop" /></button></a>
                    </div>
                </th>
                <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/RAZER.png" alt="Reazer Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/RazerSeirenEliteDesktop.png" alt="Razer Seiren Elite Desktop" />
                        <p>Microphone Razer Seiren Elite Desktop Dynamic</p>
                        <strong><h3 style="margin-top:35px; margin-right:3px;">268$</h3></strong>
                       <a href="checkout.aspx"> <button type="button" class="buy"><img src="../Media/shop.png" alt="shop" /></button></a>
                    </div>
                </th>
                <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/CORSAIR.png" alt="Corsair Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/CorsairMM800C.png" alt="Corsair MM800C" />
                        <p>Mouse pad for gamers  Corsair MM800C POLARIS Cloth Edition - 350x260x5mm</p>
                        <strong><h3 style="margin-top:35px; margin-right:3px;">90$</h3></strong>
                       <a href="checkout.aspx"> <button type="button" class="buy"><img src="../Media/shop.png" alt="shop" /></button></a>
                    </div>
                </th>
                <th>  
                    <div class="card">
                        <img style="float:left; margin-left:5px; width:115px; height:63px;" src="../Media/Logitech.png" alt="Logitec Logo" />
                        <img style="width:218px; height:218px; margin-top:65px;" src="../Media/LogitecGPro.png" alt="Logitec G Pro" />
                        <p>Keyboard for mechanical gamers Logitech G Pro Tenkeyless with keys GX Blue Switch</p>
                        <strong><h3 style="margin-top:20px; margin-right:3px;">193$</h3></strong>
                       <a href="checkout.aspx"> <button type="button" class="buy" style="margin-top:27px"><img src="../Media/shop.png" alt="shop" /></button></a>
                    </div>
                </th>
            </tr>
        </table>
       </center>
                    <div class="counect-us">
                <center>
                    <h1 style="font-family:'Rubik', sans-serif;">
                        All rights reserved to us</h3>
                        <table>
                            <tr>
                                <th><a href="https://discord.com/invite/ExtmrGf" target="blank"><img src="../Media/discord.png" alt="discord" class="discord"></a></th>
                                <th><a href="https://www.instagram.com/eliavamoyal10/" target="blank"><img src="../Media/instagram.png" alt="instagram" class="instagram"></a></th>
                                <th><a href="https://wa.me/0507244510" target="blank"><img src="../Media/whatsapp.png" alt="whatsapp" class="whatsapp"></a></th>
                            </tr>
                        </table>
                        </center>
            </div>

      
    </form>
</body>
</html>
