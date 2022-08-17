Imports System.Data
Imports System.Data.SqlClient
Partial Class SearchByDepartment
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\BCA\TYBCA-SEM-5\Databases\Collage\Assignment2\StudentDetailMaster.mdf;Integrated Security=True;Connect Timeout=30")
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim ds As DataSet

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click

        cmd = New SqlCommand("Select * from StudentMaster where Department = '" + DropDownList1.Text + "' ", con)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            GridView1.DataSource = ds.Tables(0)
            GridView1.DataBind()
        End If

    End Sub
End Class
