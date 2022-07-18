
Partial Class Student_Result_StudentResult
    Inherits System.Web.UI.Page

    Sub Cal()
        Session("php") = txtphp.Text
        Session("asp") = txtasp.Text
        Session("awd") = txtawd.Text
        Session("unix") = txtunix.Text
        Server.Transfer("DisplayResult.aspx")
    End Sub

    Sub Clear()
        txtphp.Text = ""
        txtasp.Text = ""
        txtawd.Text = ""
        txtunix.Text = ""
    End Sub


    Protected Sub btnCalculate_Click(sender As Object, e As EventArgs) Handles btnCalculate.Click
        Cal()
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        Clear()
    End Sub
End Class
