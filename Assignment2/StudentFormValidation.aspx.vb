
Partial Class StudentFormValidation
    Inherits System.Web.UI.Page


    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        If Convert.ToInt32(txtAge.Text) Then

        End If

        If Page.IsValid Then

        End If
    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        Dim len As Integer = args.Value.Length
        If len.ToString = True Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If

    End Sub

    Protected Sub CustomValidator2_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator2.ServerValidate
        Dim len As Integer = args.Value.Length
        If len = 10 Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub
End Class
