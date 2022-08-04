
Partial Class Q_3
    Inherits System.Web.UI.Page



    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click
        Dim filename As String = ""


        If (FileUpload1.HasFile) Then

            Dim fillExtension = System.IO.Path.GetExtension(FileUpload1.FileName)

            If fillExtension.ToLower() <> ".pdf" Then
                lbmsg.Text = "Only .PDF file is allowed"
            Else
                filename = FileUpload1.FileName
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + filename))
                lbmsg.Text = "File Uploaded"
            End If


        Else
                lbmsg.Text = "Please select a file to upload "
        End If


    End Sub
End Class
