
Partial Class Q_1
    Inherits System.Web.UI.Page

    Protected Sub tbnSubmit_Click(sender As Object, e As EventArgs) Handles tbnSubmit.Click
        lb2.Text = txtName.Text
        MsgBox(txtName.Text)

    End Sub
End Class
