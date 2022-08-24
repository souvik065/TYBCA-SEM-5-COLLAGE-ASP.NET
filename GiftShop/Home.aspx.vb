
Partial Class Home
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Private Sub Home_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        If Session("Admin") = True Then
            MasterPageFile = "Admin/AdminMasterPage.master"
        End If
    End Sub
End Class
