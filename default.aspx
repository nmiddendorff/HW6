<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HW6</title>

 <link href="./css/css6.css" rel="stylesheet"/> 

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .text-center {
            text-align: center;
        }
    </style>

</head>

    <body style="background-color: #D2B48C">
  
     <div class="header">
        <h2 class="auto-style1">Wicked Easy Recipes</h2>
      </div>
         
        <h4 class="caption" style="text-align: center">Using 5 Ingredients of Less!</h4>
       <div class="auto-style1">
       <br /><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="New_Recipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; <a href="AboutUs.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="ContactUs2.aspx" style="color: #696969">Contact Us</a>

     </div>

    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nmiddendorff_recipes %>" SelectCommand="SELECT * FROM [nmiddendorff_recipes]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="356px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="viewRecipe.aspx?recipeID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
    
         <div class="footer">
        <p class="text-center">Copyright 2014. 6K:183 Software Design &amp; Development</p>
      </div>

    </div>
    </form>
</body>
</html>
