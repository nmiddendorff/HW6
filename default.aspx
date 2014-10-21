<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nmiddendorff_recipes %>" SelectCommand="SELECT * FROM [nmiddendorff_recipes]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="recipeID" HeaderText="recipeID" InsertVisible="False" ReadOnly="True" SortExpression="recipeID" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="submittedBy" HeaderText="submittedBy" SortExpression="submittedBy" />
                <asp:BoundField DataField="ingredient1" HeaderText="ingredient1" SortExpression="ingredient1" />
                <asp:BoundField DataField="ingredient2" HeaderText="ingredient2" SortExpression="ingredient2" />
                <asp:BoundField DataField="ingredient3" HeaderText="ingredient3" SortExpression="ingredient3" />
                <asp:BoundField DataField="ingredient4" HeaderText="ingredient4" SortExpression="ingredient4" />
                <asp:BoundField DataField="ingredient5" HeaderText="ingredient5" SortExpression="ingredient5" />
                <asp:BoundField DataField="preparation" HeaderText="preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
