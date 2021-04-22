<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="robot.aspx.cs" Inherits="robot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
    <link rel="stylesheet" href="../CSS/login.css"/>
    <link rel="stylesheet" href="../CSS/General.css"/>
    <title>Robot Cheack</title>
</head>
<body onload="myFunction()">
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
        <h2>Verification code</h2>
        <form action="robot.aspx" method="post" runat="server">
            <input name='code3' id="code3" placeholder='Enter a code' type='text' autocomplete="off" />
            <input class='animated' type='submit' value='Send'/>
            <a class='forgot' href='signup.aspx'>Back to sign up</a>
            <asp:Label Font-underline="False" Font-Bold="True" Font-Size="Larger" runat="server" ID="fail" ForeColor="Red" ></asp:Label>




        </form>
    </div>
</body>
</html>
<script>
    function myFunction()
    {
alert("Cheack in you'r email box.")
    }
</script>
