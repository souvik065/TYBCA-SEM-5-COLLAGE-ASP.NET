Imports SQlQueryClass
Imports System.Data
Imports System.Data.SqlClient

Partial Class ProductMaster
    Inherits System.Web.UI.Page

    Dim sql As New SQlQueryClass
    Dim ds As DataSet
    Dim imagepath As String
    Dim IntID As Int64

    Private Sub Insert()
        imagepath = UploadImage()
        sql.Execomand("Insert Into ProductMaster (Category,ProductName,Price,ImagePath) values('" + DDCategory.Text + "','" + txtProductName.Text + "'," + txtPrice.Text + ",'" + imagepath + "')")

    End Sub

    Private Function UploadImage() As String
        Dim filename As String
        Dim imagepath As String
        Dim random As New Random()


        filename = random.Next().ToString() + imageupload.FileName
        If imageupload.HasFile Then
            imageupload.PostedFile.SaveAs(Server.MapPath("IMG/Product/") + filename)
            imagepath = "IMG/Product/" + filename

        End If

        Return imagepath

    End Function

    Private Sub Update()



        If Not lbimagepath.Text = "" Then
            If imageupload.HasFile Then
                imagepath = UploadImage()
            Else
                imagepath = lbimagepath.Text
            End If
        Else
            imagepath = UploadImage()
        End If
        sql.Execomand("Update ProductMaster set Category='" + DDCategory.Text + "', ProductName='" + txtProductName.Text + "', Price=" + txtPrice.Text + " ,ImagePath = '" + imagepath + "' where ProductID = " + DDCategory.ToolTip + " ")


        lbimagepath.Text = ""
        DDCategory.ToolTip = 0

    End Sub

    Private Sub View()
        ds = New DataSet
        ds = sql.ViewCommand("Select * from ProductMaster")
        If ds.Tables(0).Rows.Count > 0 Then
            GridViewProductMaster.DataSource = ds.Tables(0)
            GridViewProductMaster.DataBind()
        End If


    End Sub





    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack = False Then
            View()
            DDCategory.ToolTip = 0
        End If
    End Sub

    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If DDCategory.ToolTip > 0 Then
            Update()
            View()
        Else
            Insert()
            View()
        End If


    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        Dim btn As Button
        Dim gvr As GridViewRow
        btn = sender
        gvr = btn.Parent.NamingContainer
        IntID = Convert.ToInt64(GridViewProductMaster.DataKeys(gvr.RowIndex).Values(0).ToString())
        sql.Execomand("Delete from ProductMaster where ProductID = " + IntID.ToString() + "")
        View()

    End Sub

    Protected Sub GridViewProductMaster_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewProductMaster.SelectedIndexChanged
        Dim ds As New DataSet
        IntID = Convert.ToInt64(GridViewProductMaster.SelectedDataKey("ProductID").ToString())

        ds = sql.ViewCommand("Select * from ProductMaster where ProductID = " + IntID.ToString() + "")
        If ds.Tables(0).Rows.Count > 0 Then
            DDCategory.ToolTip = IntID
            DDCategory.Text = ds.Tables(0).Rows(0)("Category").ToString()
            txtProductName.Text = ds.Tables(0).Rows(0)("ProductName").ToString()
            txtPrice.Text = ds.Tables(0).Rows(0)("Price").ToString()
            lbimagepath.Text = ds.Tables(0).Rows(0)("ImagePath").ToString()
            btnInsert.Text = "Update"
            productimageview.ImageUrl = lbimagepath.Text
        End If

    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click
        DDCategory.ToolTip = 0
        btnInsert.Text = "Insert"
        lbimagepath.Text = ""
    End Sub
End Class
