<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpass3.aspx.cs" Inherits="forgotpass3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
    <link rel="stylesheet" href="../CSS/login.css"/>
   <link rel="stylesheet" href="../CSS/General.css"/>
  
    <title>Create a new password</title>
</head>
<body>
             <nav>
        <ul>
            <li>
         
                <a href="Homepage.html">Home</a>
            </li>
            <li>
                <a href="Developing.html">Developing</a>
            </li>
            <li>
                <a href="Hardware.html">Hardware</a>
            </li>
            <li>
                <a href="Gaming.html">Gaming </a>
            </li>

            <li class="login">
                 <a href="login.aspx">Login</a>
            </li>
            <li class="login">
                <a href="signup.aspx">Sign Up</a>
            </li>
            
        </ul>
    </nav>

    <div class="login1">
        <h2>Create a new password</h2>
        <form action="forgotpass3.aspx" onsubmit="return Valid()" method="post" runat="server">
            <input name='passname' id="passname" placeholder='New password' type='password'/>
            <input name='passnamec' id="passnamec" placeholder='Confirm new Password' type='password'/>
            <input class='animated' type='submit' value='Create a new password'/>
            <a class='forgot' href='login.aspx'>Back to login</a>
            <asp:Label Font-underline="False" Font-Bold="True" Font-Size="Larger" runat="server" ID="fail"  ForeColor="Red" />



        </form>
    </div>
</body>
</html>
<script type="text/javascript" src="../JavaScripts/forgotpasschk3.js"></script>
    

 