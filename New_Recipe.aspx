<%@ Page Language="VB" AutoEventWireup="false" CodeFile="New_Recipe.aspx.vb" Inherits="New_Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HW6</title>

 <link href="./css/css6.css" rel="stylesheet"/> 

    <style type="text/css">
        .text-center {
            text-align: center;
        }
        .auto-style1 {
            text-align: justify;
        }
    </style>

</head>
   <body style="background-color: #D2B48C">

  
     <div class="text-center">

  
     <div class="header">
        <h2 class="text-center">Wicked Easy Recipes</h2>
      </div>
         
        <h4 class="caption" style="text-align: center">Using 5 Ingredients of Less!</h4>
         <div class="text-center">
       <br /><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="New_Recipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; <a href="AboutUs.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="ContactUs2.aspx" style="color: #696969">Contact Us</a>


         </div>


    <form id="form1" runat="server">
    <div class="auto-style1">
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nmiddendorff_recipes %>" SelectCommand="SELECT * FROM [nmiddendorff_recipes]" DeleteCommand="DELETE FROM [nmiddendorff_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [nmiddendorff_recipes] ([name], [submittedBy], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@name, @submittedBy, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" UpdateCommand="UPDATE [nmiddendorff_recipes] SET [name] = @name, [submittedBy] = @submittedBy, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
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
        <div class="deleteRecipe">
        <br />
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="404px">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:BoundField DataField="ingredient1" HeaderText="ingredient 1" SortExpression="ingredient1" />
                <asp:BoundField DataField="ingredient2" HeaderText="ingredient 2" SortExpression="ingredient2" />
                <asp:BoundField DataField="ingredient3" HeaderText="ingredient 3" SortExpression="ingredient3" />
                <asp:BoundField DataField="ingredient4" HeaderText="ingredient 4" SortExpression="ingredient4" />
                <asp:BoundField DataField="ingredient5" HeaderText="ingredient 5" SortExpression="ingredient5" />
                <asp:BoundField DataField="preparation" HeaderText="preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <div class="deleteRecipe">
        <br />
       
         <br />
        </div>

        <!-- <table align="center" style="width: 449px">
                <tr>
                    <td>Name:</td>
                    <td><asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                </tr>

                <tr>
                    <td>Submitted By</td>
                    <td><asp:TextBox ID="submittedByTextBox" runat="server" Text='<%# Bind("submittedBy") %>' />
                </td>
                </tr>
                    
                <tr>
                    <td>Ingredient 1</td>
                    <td><asp:TextBox ID="ingredient1TextBox" runat="server" Text='<%# Bind("ingredient1") %>' />
                </td>
                </tr>
                
                <tr>
                    <td>Ingredient 2</td>
                    <td><asp:TextBox ID="ingredient2TextBox" runat="server" Text='<%# Bind("ingredient2") %>' />
                </td>
                </tr>

                <tr>
                    <td>Ingredient 3</td>
                    <td><asp:TextBox ID="ingredient3TextBox" runat="server" Text='<%# Bind("ingredient3") %>' />
                </td>
                </tr>
                    
                <tr>
                    <td>Ingredient 4</td>
                    <td> <asp:TextBox ID="ingredient4TextBox" runat="server" Text='<%# Bind("ingredient4") %>' />
                </td>
                </tr>

                <tr>
                    <td>Ingredient 5</td>
                    <td><asp:TextBox ID="ingredient5TextBox" runat="server" Text='<%# Bind("ingredient5") %>' />
                </td>
                </tr>

                <tr>
                    <td>Preperation</td>
                    <td><asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                </td>
                </tr>
                
                <tr>
                    <td>Notes</td>
                    <td><asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                </td>
                </tr>

                <tr>
                    <td> <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /></td>
               <td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                     </tr>
            
            </table>
        -->
       
        <br />
        <br />
        <br />
    
         <div class="footer">
        <p class="text-center">Copyright 2014. 6K:183 Software Design &amp; Development</p>
      </div>

    </div>
    </form>
     </div>
</body>
</html>
