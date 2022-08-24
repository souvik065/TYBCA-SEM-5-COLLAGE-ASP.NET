Imports System.Data
Imports System.Data.SqlClient
Imports SqlQueryClass
Partial Class Registeration
    Inherits System.Web.UI.Page
    Dim sql As New SqlQueryClass
    Dim ds As DataSet

    Private Sub Insert()
        sql.ExeComand("Insert Into UserMaster (UserName,Email,Password) values('" + txtUserName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "')")
        Response.Write("<script>alert('Registered Successfully')</script>")
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Insert()
    End Sub


End Class
