<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchbycity.aspx.cs" Inherits="searchbycity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../Media/icon.png"/>
    <link href="../CSS/Generaladmin.css" rel="stylesheet" />
    <link href="../CSS/Searchbycity.css" rel="stylesheet" />
    <title>Search By City</title>
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
        
    <form id="form1" runat="server" action="searchbycity.aspx" onchange="myFunction()" style="margin-top:150px;">
        <h1 class="titel"> Search user by city </h1>
        <center>
         <select id="city1" name="city1">
               <option value="0">Select a city:</option>
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

                </center>
                

<asp:Panel ID="SearchByCity" Visible="False" runat="server">
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
                  <asp:label text="No results" runat="server"  Visible="False" ID="r" Font-Bold="True" Font-Size="Larger" />

        </center>

        
    </form>
</body>
</html>
<script>
    function myFunction() {
        document.getElementById("form1").submit();
    }
</script>