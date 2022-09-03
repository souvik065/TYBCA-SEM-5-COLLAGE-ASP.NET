Imports System.Data
Imports System.Data.SqlClient
Imports SqlQueryClass

Partial Class Admin_ManageStock
    Inherits System.Web.UI.Page

    Dim sql As New SqlQueryClass
    Dim ds As DataSet
    Dim imagepath As String



    Private Sub Insert()
        Dim imagepath As String
        imagepath = UploadImage()
        sql.ExeCommand("Insert into ProductMaster (CategoryName,ProductName,Qty,Price,NetTotal,ImagePath) values('" + DDCategoryName.Text + "','" + txtItemName.Text + "'," + txtQty.Text + "," + txtPrice.Text + "," + txtNetTotal.Text + ",'" + imagepath + "')")
    End Sub


    Private Function UploadImage() As String
        Dim filename As String
        Dim random As New Random()
        Dim imagepath As String

        filename = random.Next().ToString() + imageupload.FileName

        If imageupload.HasFile Then
            imageupload.PostedFile.SaveAs(Server.MapPath("IMG/") + filename)
            imagepath = "Admin/IMG/" + filename
        End If

        Return imagepath

    End Function

    Private Sub Update()
        If lbimagepath.Text = "" Then
            imagepath = UploadImage()
        Else
            imagepath = lbimagepath.Text
        End If
        sql.ExeCommand("Update ProductMaster set CategoryName='" + DDCategoryName.Text + "',ProductName='" + txtItemName.Text + "',Qty=" + txtQty.Text + ",Price=" + txtPrice.Text + ",NetTotal=" + txtNetTotal.Text + ",ImagePath='" + imagepath + "' where ProductID = " + DDCategoryName.ToolTip + "")
        btnInsert.Text = "Insert"
        DDCategoryName.ToolTip = 0
    End Sub

    Private Sub View()
        Dim ds As New DataSet
        ds = sql.ViewCommand("Select * from ProductMaster")
        If ds.Tables(0).Rows.Count > 0 Then
            GridViewProducts.DataSource = ds.Tables(0)
            GridViewProducts.DataBind()
        End If

    End Sub

    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If DDCategoryName.ToolTip > 0 Then
            Update()
            View()

        Else
            Insert()
            View()

        End If
    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack = False Then
            View()
            DDCategoryName.ToolTip = 0
        End If
    End Sub

    Protected Sub txtQty_TextChanged(sender As Object, e As EventArgs) Handles txtQty.TextChanged
        txtNetTotal.Text = Convert.ToDecimal(txtQty.Text) * Convert.ToDecimal(txtPrice.Text)
    End Sub

    Protected Sub txtPrice_TextChanged(sender As Object, e As EventArgs) Handles txtPrice.TextChanged
        txtNetTotal.Text = Convert.ToDecimal(txtQty.Text) * Convert.ToDecimal(txtPrice.Text)
    End Sub



    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        Dim btn As Button
        Dim gvr As GridViewRow
        btn = sender
        gvr = btn.Parent.NamingContainer
        Dim intID As Int64
        intID = Convert.ToInt64(GridViewProducts.DataKeys(gvr.RowIndex).Values(0).ToString())
        sql.ExeCommand("delete from ProductMaster where ProductID = " + intID.ToString() + "")
        View()
    End Sub

    Protected Sub GridViewProducts_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewProducts.SelectedIndexChanged
        Dim intID As Int64
        intID = Convert.ToInt64(GridViewProducts.SelectedDataKey("ProductID").ToString())
        Dim ds As New DataSet


        ds = sql.ViewCommand("Select * from ProductMaster where ProductID = " + intID.ToString() + "")
        If ds.Tables(0).Rows.Count > 0 Then
            DDCategoryName.ToolTip = intID.ToString()
            DDCategoryName.Text = ds.Tables(0).Rows(0)("CategoryName").ToString()
            txtItemName.Text = ds.Tables(0).Rows(0)("ProductName").ToString()
            txtQty.Text = ds.Tables(0).Rows(0)("Qty").ToString()
            txtPrice.Text = ds.Tables(0).Rows(0)("Price").ToString()
            txtNetTotal.Text = ds.Tables(0).Rows(0)("NetTotal").ToString()
            imagepath = ds.Tables(0).Rows(0)("ImagePath").ToString()


            btnInsert.Text = "Update"
        End If

    End Sub
End Class
