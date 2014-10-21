<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>

        <!-- Bootstrap core CSS --> 
 <link href="./css/bootstrap.min.css" rel="stylesheet"/> 
    <style type="text/css">
        #form1 {
            text-align: center;
        }
    </style>
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

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="136px" Width="372px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

    </form>
</body>
</html>
