<%@ Page Language="VB" AutoEventWireup="false" CodeFile="viewRecipe.aspx.vb" Inherits="New_Recipe" %>

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
 <li><a href="./new_Recipe.aspx">New Recipe</a></li> 
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
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nmiddendorff_recipes %>" SelectCommand="SELECT * FROM [nmiddendorff_recipes] WHERE ([recipeID] = @recipeID2)" DeleteCommand="DELETE FROM [nmiddendorff_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [nmiddendorff_recipes] ([name], [submittedBy], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@name, @submittedBy, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" UpdateCommand="UPDATE [nmiddendorff_recipes] SET [name] = @name, [submittedBy] = @submittedBy, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID2" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
       
         <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Height="50px" HorizontalAlign="Center" Width="441px">
            <Fields>
                <asp:BoundField DataField="recipeID" HeaderText="recipeID" SortExpression="recipeID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:BoundField DataField="ingredient1" HeaderText="Ingredient 1" SortExpression="ingredient1" />
                <asp:BoundField DataField="ingredient2" HeaderText="Ingredient 2" SortExpression="ingredient2" />
                <asp:BoundField DataField="ingredient3" HeaderText="Ingredient 3" SortExpression="ingredient3" />
                <asp:BoundField DataField="ingredient4" HeaderText="Ingredient 4" SortExpression="ingredient4" />
                <asp:BoundField DataField="ingredient5" HeaderText="Ingredient 5" SortExpression="ingredient5" />
                <asp:BoundField DataField="preparation" HeaderText="Preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
       
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
