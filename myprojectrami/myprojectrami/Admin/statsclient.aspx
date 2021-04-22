<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="statsclient.aspx.cs" Inherits="statsclient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stats Client</title>
    <link rel="icon" href="../Media/icon.png"/>
   <link href="../CSS/searchuser.css" rel="stylesheet" />
     <link href="../CSS/Generaladmin.css" rel="stylesheet" />
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
        
    <form  id="form1" runat="server" action="statsuser.aspx" style="margin-top:50px;"  method="post"  oninput="searchuser.aspx">
     
        </form>
                          
          
           <h1 class="titel">Client stats</h1>
            <div class="container">
            <div class="section">
            <section>
            <div class="tbl-header">
            <asp:Content ><table><%=tb%></table></asp:Content>
            </div>
            </section>
            </div>
            </div>
            </center>
           
               <center>
                  
        </center>
</body>
</html>
