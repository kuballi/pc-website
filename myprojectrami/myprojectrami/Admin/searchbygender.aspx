<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchbygender.aspx.cs" Inherits="searchbygender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
    <link href="../CSS/Generaladmin.css" rel="stylesheet" />
      <link rel="stylesheet" href="../CSS/Searchbycity.css" />
    <title> Search By Gender</title>
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
        
    <form id="form1" runat="server" action="searchbygender.aspx" style="margin-top:150px;" onchange="myFunction()">
        <center>
            <h1 class="titel"> Search user by a gender </h1>
         <select id="gender1" name="gender1">
                <option value="0">Select a gender:</option>
                <option value="1">Male</option>
                <option value="2">Female</option>
                
            </select>
                </center> 
        
<asp:Panel ID="SearchByGender1" Visible="False" runat="server">
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
        <asp:label text="No results" runat="server"  Visible="False" ID="results3" Font-Bold="True" Font-Size="Larger" />
         </center>
    </form>
    </body>
</html>
<script>
    function myFunction() {
     
       
        document.getElementById("form1").submit();
        
    }
</script>