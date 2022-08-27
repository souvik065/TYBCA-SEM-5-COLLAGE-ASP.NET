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


        filename = random.Next().ToString + imageupload.FileName
        If imageupload.HasFile Then
            imageupload.PostedFile.SaveAs(Server.MapPath("IMG/Product") + filename)
            imagepath = "IMG/Product" + filename

        End If

        Return imagepath

    End Function

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
        Insert()
        View()
    End Sub
End Class
