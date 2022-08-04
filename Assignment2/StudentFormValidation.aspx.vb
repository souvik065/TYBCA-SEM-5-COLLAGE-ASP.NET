
Partial Class StudentFormValidation
    Inherits System.Web.UI.Page


    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        If Convert.ToInt32(txtAge.Text) Then

        End If

        If Page.IsValid Then

        End If
    End Sub
End Class
