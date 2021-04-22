<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
    <link rel="stylesheet" href="../CSS/login.css"/>
   <link rel="stylesheet" href="../CSS/General.css"/>
  
    <title>Login</title>
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
        <h2>Login</h2>
        <form action="login.aspx" onsubmit="return Valid()" method="post" runat="server">
            <input name='username' id="UserName" placeholder='Usernam or Email' type='text'/>
            <input id='Pass' name='pass' placeholder='Password' type='password'/>

            <input class='animated' type='submit' value='Login'/>
            <a class='forgot' href='signup.aspx'> Have not an account?</a>
            <a class='forgot' href='forgotpass1.aspx'> Frgot you'r password?</a>
             <asp:Label Font-underline="False" Font-Bold="True" Font-Size="Larger" runat="server" ID="fail"   ForeColor="Red" ></asp:Label>


        </form>
    </div>
      
</body>
</html>
 <script type="text/javascript" src="../JavaScripts/chklog.js"></script>

   
