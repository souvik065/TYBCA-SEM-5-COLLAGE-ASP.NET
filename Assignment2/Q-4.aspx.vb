
Partial Class Q_4
    Inherits System.Web.UI.Page

    Protected Sub btnStep2_Click(sender As Object, e As EventArgs) Handles btnStep2.Click
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub btnPrevStep1_Click(sender As Object, e As EventArgs) Handles btnPrevStep1.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub btnStep3_Click(sender As Object, e As EventArgs) Handles btnStep3.Click
        MultiView1.ActiveViewIndex = 2
        LStudentName.Text = txtStudentName.Text
        LDOB.Text = txtDOB.Text
        LMobileNo.Text = txtMobileNo.Text
        LAddress.Text = txtAddress.Text
        LEmail.Text = txtEmail.Text
        LBoard.Text = txtBoard.Text
        LSchoolName.Text = txtSchoolName.Text
        LPercentage.Text = txtPerentage.Text



    End Sub

    Protected Sub btnPrevStep2_Click(sender As Object, e As EventArgs) Handles btnPrevStep2.Click
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub MultiView1_ActiveViewChanged(sender As Object, e As EventArgs) Handles MultiView1.ActiveViewChanged

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            MultiView1.ActiveViewIndex = 0
        End If
    End Sub
End Class
