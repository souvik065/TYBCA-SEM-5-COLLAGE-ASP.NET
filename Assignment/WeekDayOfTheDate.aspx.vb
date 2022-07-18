
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
End Class
