
Partial Class WeekDayOfDay_WeekDayOfTheDate
    Inherits System.Web.UI.Page


    Protected Sub btnCalculate_Click(sender As Object, e As EventArgs) Handles btnCalculate.Click
        Dim value As Date
        value = txtDate.Text
        txtDay.Text = value.DayOfWeek.ToString()
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtDate.Text = ""
        txtDay.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
        System.Environment.Exit(0)
    End Sub
End Class
