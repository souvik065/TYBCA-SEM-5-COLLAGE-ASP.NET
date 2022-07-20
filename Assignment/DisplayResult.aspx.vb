
Partial Class Student_Result_DisplayResult
    Inherits System.Web.UI.Page

    Sub CalculateResult()
        lbphp.Text = Session("php")
        lbasp.Text = Session("asp")
        lbawd.Text = Session("awd")
        lbunix.Text = Session("unix")

        lbTotalMarks.Text = Convert.ToDecimal(Session("php")) + Convert.ToDecimal(Session("asp")) + Convert.ToDecimal(Session("awd")) + Convert.ToDecimal(Session("unix"))
        lbPercentage.Text = Convert.ToDecimal(lbTotalMarks.Text) * 100 / 400
        lbPercentage.Text += " %"
    End Sub




    Protected Sub btnPrevious_Click(sender As Object, e As EventArgs) Handles btnPrevious.Click
        Server.Transfer("StudentResult.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        CalculateResult()
    End Sub


    Protected Sub btnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
        System.Environment.Exit(0)
    End Sub
End Class
