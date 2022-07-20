
Partial Class CalculateSalesPrice_CalculateSalesPrice
    Inherits System.Web.UI.Page


    Protected Sub btnCalculateSalesPrice_Click(sender As Object, e As EventArgs) Handles btnCalculateSalesPrice.Click
        txtSalesPrice.Text = Convert.ToDecimal(txtOriginalValue.Text) - Convert.ToDecimal(txtOriginalValue.Text) * Convert.ToDecimal(txtDiscPer.Text) / 100
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtOriginalValue.Text = ""
        txtDiscPer.Text = ""
        txtSalesPrice.Text = ""
    End Sub

    Protected Sub btnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
        System.Environment.Exit(0)
    End Sub
End Class
