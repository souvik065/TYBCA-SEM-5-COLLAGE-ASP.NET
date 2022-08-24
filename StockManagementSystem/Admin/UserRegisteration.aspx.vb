Imports System.Data
Imports System.Data.SqlClient
Imports SqlQueryClass
Partial Class UserRegisteration
    Inherits System.Web.UI.Page
    Dim ds As DataSet
    Dim sql As New SqlQueryClass


    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        sql.Execommand("Insert into UserMaster (FirstName,LastName,Gender,Email,Password) values('" + txtfname.Text + "','" + txtlname.Text + "','" + DDGender.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')")
        MsgBox("Inserted Successfully")
    End Sub
End Class
