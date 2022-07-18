
Partial Class Calculator_Calculator
    Inherits System.Web.UI.Page


    Protected Sub Btn1_Click(sender As Object, e As EventArgs) Handles Btn1.Click
        txtScreen.Text += "1"
    End Sub

    Protected Sub Btn2_Click(sender As Object, e As EventArgs) Handles Btn2.Click
        txtScreen.Text += "2"
    End Sub

    Protected Sub Btn3_Click(sender As Object, e As EventArgs) Handles Btn3.Click
        txtScreen.Text += "3"
    End Sub

    Protected Sub Btn4_Click(sender As Object, e As EventArgs) Handles Btn4.Click
        txtScreen.Text += "4"
    End Sub

    Protected Sub Btn5_Click(sender As Object, e As EventArgs) Handles Btn5.Click
        txtScreen.Text += "5"
    End Sub

    Protected Sub Btn6_Click(sender As Object, e As EventArgs) Handles Btn6.Click
        txtScreen.Text += "6"
    End Sub

    Protected Sub Btn7_Click(sender As Object, e As EventArgs) Handles Btn7.Click
        txtScreen.Text += "7"
    End Sub

    Protected Sub Btn8_Click(sender As Object, e As EventArgs) Handles Btn8.Click
        txtScreen.Text += "8"
    End Sub

    Protected Sub Btn9_Click(sender As Object, e As EventArgs) Handles Btn9.Click
        txtScreen.Text += "9"
    End Sub

    Protected Sub Btn0_Click(sender As Object, e As EventArgs) Handles Btn0.Click
        txtScreen.Text += "0"
    End Sub

    Protected Sub BtnDot_Click(sender As Object, e As EventArgs) Handles BtnDot.Click
        If Not txtScreen.Text.Contains(".") Then
            txtScreen.Text += "."
        End If
    End Sub

    Protected Sub BtnEqualsTo_Click(sender As Object, e As EventArgs) Handles BtnEqualsTo.Click
        If Session("flag") = "Add" Then
            txtScreen.Text = Convert.ToDecimal(Session("Old")) + Convert.ToDecimal(txtScreen.Text)

        ElseIf Session("flag") = "Sub" Then
            txtScreen.Text = Convert.ToDecimal(Session("Old")) - Convert.ToDecimal(txtScreen.Text)

        ElseIf Session("flag") = "Div" Then
            txtScreen.Text = Convert.ToDecimal(Session("Old")) / Convert.ToDecimal(txtScreen.Text)

        ElseIf Session("flag") = "Multi" Then
            txtScreen.Text = Convert.ToDecimal(Session("Old")) * Convert.ToDecimal(txtScreen.Text)

        End If
    End Sub

    Protected Sub BtnDiv_Click(sender As Object, e As EventArgs) Handles BtnDiv.Click
        Session("Old") = Convert.ToDecimal(txtScreen.Text)
        Session("flag") = "Div"
        txtScreen.Text = ""
    End Sub

    Protected Sub BtnMulti_Click(sender As Object, e As EventArgs) Handles BtnMulti.Click
        Session("Old") = Convert.ToDecimal(txtScreen.Text)
        Session("flag") = "Multi"
        txtScreen.Text = ""
    End Sub

    Protected Sub BtnSub_Click(sender As Object, e As EventArgs) Handles BtnSub.Click
        Session("Old") = Convert.ToDecimal(txtScreen.Text)
        Session("flag") = "Sub"
        txtScreen.Text = ""
    End Sub

    Protected Sub BtnAdd_Click(sender As Object, e As EventArgs) Handles BtnAdd.Click
        Session("Old") = Convert.ToDecimal(txtScreen.Text)
        Session("flag") = "Add"
        txtScreen.Text = ""
    End Sub

    Protected Sub BtnCE_Click(sender As Object, e As EventArgs) Handles BtnCE.Click
        txtScreen.Text = ""
    End Sub
End Class
