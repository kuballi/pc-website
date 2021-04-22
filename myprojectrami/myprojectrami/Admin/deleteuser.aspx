-<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteuser.aspx.cs" Inherits="deleteuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <link rel="icon" href="../Media/icon.png"/>
    <link href="../CSS/Generaladmin.css" rel="stylesheet" />
  
    <title> Stats User</title>
</head>
<body>
<nav>
        <ul>
            <li>
                <a href="statsuser.aspx">Stats</a>
            </li>
            <li>
                <a href="deleteuser.aspx">Delete</a>
            </li>
            <li>
                <a href="searchbyemail.aspx">Search</a>
            </li>
                <li>
                <a href="reply.aspx">Reply</a>
            </li>
            <li class="logout">
                <a href="logout.aspx">Logout</a>
            </li>
           
        </ul>
    </nav>

    <form id="form1" runat="server" onsubmit="deleteuser.aspx" method="post" >
        <center>
        <div class="container">
            <div class="section">
                <section>
                  <h1 class="titel">Delete user</h1>
                <div class="tbl-header">
                     <asp:Content><table><%=tb%></table></asp:Content>
                    <input name="Line" id="Line" style="visibility:hidden"></input>
        </div>
        </section>
        </div>
         </div>
     </center>
    </form>
     
</body>
</html>
<script>
    function Delete(x) {
       document.getElementById("Line").value = x;
    }
</script>
