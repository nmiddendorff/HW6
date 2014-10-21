<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HW6</title>

    <!-- Bootstrap core CSS --> 
 <link href="./css/bootstrap.min.css" rel="stylesheet"/> 

</head>
<body>

    <!--###################################################################################-->
    <div class="collapse navbar-collapse"> 
 <ul class="nav navbar-nav"> 
 <li><a href="./default.aspx">Home</a></li> 
 <li><a href="./newRecipe.aspx">New Recipe</a></li> 
 <li><a href="./AboutUs.aspx">About Us</a></li> 
 <li><a href="./ContactUs.aspx">Contact Us</a></li> 
 </ul> 
 </div><!--/.nav-collapse --> 
<!--###################################################################################-->
   
     <div class="page-header">
        <h2 class="text-center">Wicked Easy Recipes</h2>
      </div>
         
        <h4 class="caption" style="text-align: center">Using 5 Ingredients of Less!</h4>
      

    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nmiddendorff_recipes %>" SelectCommand="SELECT * FROM [nmiddendorff_recipes]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
    
         <div class="well">
        <p class="text-center">Copyright 2014. 6K:183 Software Design &amp; Development</p>
      </div>

    </div>
    </form>
</body>
</html>
