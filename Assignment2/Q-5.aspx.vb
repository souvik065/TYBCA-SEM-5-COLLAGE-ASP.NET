
Partial Class Q_5
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub btnNext_Click(sender As Object, e As EventArgs) Handles btnNext.Click
        MultiView1.ActiveViewIndex = 1
    End Sub
End Class
