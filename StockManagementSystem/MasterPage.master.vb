
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub btnCategoryForm_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Admin") = False Then
            btnCategoryForm.Visible = False
        End If
    End Sub
End Class

