
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub btnCategoryForm_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Admin") = False Then
            btnProduct.Visible = False
            btnPurchase.Visible = False

        End If
    End Sub

    Protected Sub btnProduct_Click(sender As Object, e As EventArgs) Handles btnProduct.Click
        Response.Redirect("ProductMaster.aspx")
    End Sub

    Protected Sub btnPurchase_Click(sender As Object, e As EventArgs) Handles btnPurchase.Click

    End Sub
End Class

