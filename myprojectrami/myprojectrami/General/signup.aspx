<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
       <link rel="stylesheet" href="../CSS/Signup.css" />
    <link rel="stylesheet" href="../CSS/General.css" /> 

   <title>Sign Up</title>
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

    <div class="Register1">
        <h2>Sign Up</h2>
        <form action="signup.aspx" onsubmit="return Valid()" method="post" runat="server">
            <input name="FName" placeholder="First Name" id="FName" type="text" />
            <input name="LName" placeholder="Last Name" id="LName" type="text" />
            <input name="Phonenum" placeholder="+972" id="Phonenum" type="text" />
            <input name="UserName" placeholder="Username" id="UserName" type="text" />
            <input name="Email" placeholder="E-Mail Address" id="Email" type="text" />
            <input name="pass" placeholder="Password" id="pass" type="password" />
            <input placeholder="Confirm password" id="PassCheck" type="password" />

            <p>Please select you'r gender:</p>
            <select id="Gender" name="Gender">
                <option value="0">select You'r Gender</option>
                <option value="1">Male</option>
                <option value="2">Female</option>
            </select>
            <br>
            <p>Please select you'r city:</p>
            <select id="City" name="City">
                <option value="0">Select You'r city:</option>
                 <option value="1">Gan Yavne</option>
                <option value="2">Tel Aviv</option>
                <option value="3">Jerusalem</option>
                <option value="4">Ashdod</option>
                <option value="5">Eilat</option>
                <option value="6">Heifa</option>
                <option value="7">Ber Sheva</option>
                <option value="8">Ramle</option>
                <option value="9">Netanya</option>
                <option value="10">Other</option>
            </select>

            <input class="animated" value="Sign Up" type="submit"/>
            <a class="forgot" href="login.aspx">Already have an account?</a>
            <asp:Label Font-underline="False" Font-Bold="True" Font-Size="Larger" runat="server" ID="fail" ForeColor="Red" />
          

        </form>
    </div>
</body>    
</html>
<script type="text/javascript" src="../JavaScripts/chkreg.js"></script>
        
