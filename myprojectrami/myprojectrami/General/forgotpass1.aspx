<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpass1.aspx.cs" Inherits="forgotpass1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
    <link rel="stylesheet" href="../CSS/login.css"/>
   <link rel="stylesheet" href="../CSS/General.css"/>
  
    <title>Forgot password</title>
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
        <h2>Forgot password</h2>
        <form action="forgotpass1.aspx" method="post" runat="server" onsubmit="return Valid()">
            <input name='Emailname' id="Emailname" placeholder="Enter you'r Email" type='text'/>
            <input class='animated' type='submit' value='Send'/>
            <a class='forgot' href='login.aspx'>Back to login</a>
            <asp:Label Font-underline="False" Font-Bold="True" Font-Size="Larger" runat="server" ID="fail"  ForeColor="Red"></asp:Label>

        </form>
    </div>
</body>
</html>
<script type="text/javascript" src="../JavaScripts/forgotpasschk1.js"> </script>