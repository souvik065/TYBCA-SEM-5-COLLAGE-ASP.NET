Imports System.Data
Imports System.Data.SqlClient
Imports SqlQueryClass
Partial Class Login
    Inherits System.Web.UI.Page

    Dim sql As New SqlQueryClass
    Dim ds As DataSet

    Private Sub Login()
        ds = sql.ViewCommand("Select * From UserMaster where UserName = '" + txtUserName.Text + "' and password = '" + txtPassword.Text + "'")
        If ds.Tables(0).Rows.Count > 0 Then
            Session("Admin") = ds.Tables(0).Rows(0)("Admin").ToString()

            Response.Redirect("Home.aspx")

        End If
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Login()
    End Sub


End Class
