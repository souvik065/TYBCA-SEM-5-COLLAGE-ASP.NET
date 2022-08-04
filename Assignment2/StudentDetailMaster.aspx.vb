Imports System.Data
Imports System.Data.SqlClient

Partial Class StudentDetailMaster
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\BCA\TYBCA-SEM-5\Databases\Collage\Assignment2\StudentDetailMaster.mdf;Integrated Security=True;Connect Timeout=30")
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim ds As DataSet
    Dim IntID As Int64

    Private Sub Insert()
        con.Open()
        cmd = New SqlCommand("Insert Into StudentMaster (RollNo,StudName,Class,Department) values(" + txtRollNo.Text + ",'" + txtFullName.Text + "','" + txtClass.Text + "','" + DropDownListDepartment.SelectedValue + "')", con)
        cmd.ExecuteNonQuery()
        cmd.Dispose()

        con.Close()
    End Sub

    Private Sub View()
        cmd = New SqlCommand("Select * from StudentMaster", con)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            GridViewStudentDetails.DataSource = ds.Tables(0)
            GridViewStudentDetails.DataBind()
        End If
    End Sub


    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        If txtRollNo.ToolTip > 0 Then
            Update()
        Else
            Insert()
        End If

        View()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack = False Then
            View()
        End If


    End Sub

    Private Sub Update()
        con.Open()
        cmd = New SqlCommand("Update StudentMaster set RollNo = " + txtRollNo.Text + ",StudName = '" + txtFullName.Text + "' ,Class = '" + txtClass.Text + "' ,Department  = '" + DropDownListDepartment.SelectedValue + "' where StudID = " + txtRollNo.ToolTip + " ", con)
        cmd.ExecuteNonQuery()
        cmd.Dispose()

        con.Close()
        txtRollNo.ToolTip = 0
        btnInsert.Text = "Insert"
    End Sub

    Protected Sub GridViewStudentDetails_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridViewStudentDetails.SelectedIndexChanged
        IntID = Convert.ToInt64(GridViewStudentDetails.SelectedDataKey("StudID").ToString())
        cmd = New SqlCommand("Select * from StudentMaster where StudID = " + IntID.ToString() + "", con)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            txtRollNo.ToolTip = ds.Tables(0).Rows(0)("StudID").ToString()
            txtRollNo.Text = ds.Tables(0).Rows(0)("RollNo").ToString()
            txtFullName.Text = ds.Tables(0).Rows(0)("StudName").ToString()
            txtClass.Text = ds.Tables(0).Rows(0)("Class").ToString()
            DropDownListDepartment.Text = ds.Tables(0).Rows(0)("Department").ToString()
            btnInsert.Text = "Update"
        End If
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        Dim btn As Button
        btn = sender
        Dim gvr As GridViewRow
        gvr = btn.Parent.NamingContainer
        IntID = Convert.ToInt64(GridViewStudentDetails.DataKeys(gvr.RowIndex).Values(0).ToString())
        con.Open()
        cmd = New SqlCommand("Delete from StudentMaster where StudID = " + IntID.ToString() + "", con)
        cmd.ExecuteNonQuery()
        cmd.Dispose()

        con.Close()
        View()
    End Sub
End Class
