<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchbyemail.aspx.cs" Inherits="searchbyemail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
 <link href="../CSS/searchuser.css" rel="stylesheet" />
    <link href="../CSS/Generaladmin.css" rel="stylesheet" />
    <title> Search By Email</title>
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
    <form id="form1" runat="server" style="margin-top:50px;" action="searchbyemail.aspx" method="post">
        <center>
             <input type="search" name="email1" placeholder="Search user by a email address..." onmouseout="myFunction()"/>
          </center>
        </form>
                          
           <asp:Panel ID="Searchbyemail" Visible="False" runat="server">
           <h1 class="titel">User stats</h1>
            <div class="container">
            <div class="section">
            <section>
            <div class="tbl-header">
            <asp:Content><table><%=tb%></table></asp:Content>
            </div>
            </section>
            </div>
            </div>
            </center>
           </asp:Panel>
               <center>
        <asp:label text="No results" runat="server"  Visible="False" ID="resultse" Font-Bold="True" Font-Size="Larger" />
        </center>
    </form>
</body>
</html>
<script>
    function myFunction() {
     
       
        document.getElementById("form1").submit();
        
    }
</script>