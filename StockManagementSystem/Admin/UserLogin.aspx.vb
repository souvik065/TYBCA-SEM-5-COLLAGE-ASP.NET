Imports System.Data
Imports System.Data.SqlClient
Imports SqlQueryClass

Partial Class UserLogin
    Inherits System.Web.UI.Page

    Dim sql As New SqlQueryClass
    Dim ds As DataSet



    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        ds = sql.ViewCommand("Select Email,Admin from UserMaster where Email = '" + txtemail.Text + "' and Password = '" + txtpassword.Text + "' ")

        Dim admin As Boolean


        If ds.Tables(0).Rows.Count > 0 Then

            admin = ds.Tables(0).Rows(0)("Admin").ToString()
            If admin = True Then
                Session("Admin") = True
            End If

            Session("IsLogin") = True
            Response.Redirect("Home.aspx")
        Else
            Response.Write("<scrip>alert('Incorrect UserName and Password')</script>")
        End If

    End Sub
End Class
