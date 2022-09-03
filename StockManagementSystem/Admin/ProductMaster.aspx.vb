Imports SqlQueryClass
Imports System.Data
Imports System.Data.SqlClient
Partial Class Admin_ProductMaster
    Inherits System.Web.UI.Page

    Dim sql As New SqlQueryClass
    Dim ds As DataSet
    Dim IntID As Int64

    Private Sub Insert()

        sql.Execommand("Insert Into ProductMaster (Category,ProductName) set('" + DDCategory.Text + "','" + txtProductName.Text + "')")

    End Sub

    Private Sub View()
        ds = New DataSet
        ds = sql.ViewCommand("Select * from ProductMaster ")
        If ds.Tables(0).Rows.Count > 0 Then
            GridViewProduct.DataSource = ds.Tables(0)
            GridViewProduct.DataBind()

        End If

    End Sub


    Private Function UploadImage()

    End Function



    Protected Sub GridViewProduct_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewProduct.SelectedIndexChanged
        IntID = Convert.ToInt64(GridViewProduct.SelectedDataKey("ProductID").ToString())
        ds = New DataSet

        ds = sql.ViewCommand("Select * from ProducMaster Where ProductID = " + IntID.ToString() + "")
        If ds.Tables(0).Rows.Count > 0 Then
            DDCategory.ToolTip = IntID
            DDCategory.Text = ds.Tables(0).Rows(0)("Category").ToString()
            txtProductName.Text = ds.Tables(0).Rows(0)("ProductName").ToString()

        End If
        btnInsert.Text = "Update"

    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        Dim btn As Button
        Dim gvr As GridViewRow
        btn = sender
        gvr = btn.Parent.NamingContainer
        IntID = Convert.ToInt64(GridViewProduct.DataKeys(gvr.RowIndex).Value.ToString())
        sql.Execommand("Delete from ProductMaster where ProductID = " + IntID.ToString() + "")
        View()

    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click
        DDCategory.ToolTip = 0
        btnInsert.Text = "Insert"
    End Sub
End Class
