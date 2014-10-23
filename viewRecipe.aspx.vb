
Partial Class New_Recipe
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleting(sender As Object, e As DetailsViewDeleteEventArgs) Handles DetailsView1.ItemDeleting
        Response.Redirect("./ViewRecipe.aspx")
    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("Refresh", "3;URL= ./ViewRecipe.aspx")
    End Sub
End Class
