Imports SqlQueryClass
Imports System.Data
Imports System.Data.SqlClient
Partial Class Admin_SupplierMaster
    Inherits System.Web.UI.Page

    Dim sql As New SqlQueryClass
    Dim ds As DataSet
    Dim IntID As Int64


    Private Sub Insert()
        sql.Execommand("Insert Into SupplierMaster (SupplierName,Email,PhoneNo) values('" + txtSupplierName.Text + "','" + txtEmail.Text + "'," + txtPhoneNo.Text + ")")
    End Sub



    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub GridViewProduct_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewProduct.SelectedIndexChanged

    End Sub
End Class
