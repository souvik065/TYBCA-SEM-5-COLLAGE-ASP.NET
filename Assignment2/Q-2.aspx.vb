
Partial Class Q_2
    Inherits System.Web.UI.Page
    Dim hobbie As String
    Dim course As String

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        If CheckBoxMakingMusic.Checked = True Then
            hobbie += CheckBoxMakingMusic.Text
        ElseIf CheckBoxDjing.Checked = True Then
            hobbie += CheckBoxDjing.Text
        ElseIf CheckBoxGames.Checked = True Then
            hobbie += CheckBoxGames.Text
        ElseIf CheckBoxSketching.Checked = True Then
            hobbie += CheckBoxSketching.Text
        End If

        If RadioButtonBBA.Checked = True Then
            course = "BBA"
        ElseIf RadioButtonBCA.Checked = True Then
            course = "BCA"
        ElseIf RadioButtonBCOM.Checked = True Then
            course = "BCOM"
        End If

        MsgBox("Country :" + ListBoxCountry.SelectedItem.ToString() + "State :" + DropDownListState.SelectedItem.ToString() + "Hobbies :" + hobbie + "Course :" + course)
    End Sub
End Class
