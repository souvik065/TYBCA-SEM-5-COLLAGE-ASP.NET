Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Public Class SqlQueryClass
    Dim con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\BCA\TYBCA-SEM-5\Databases\Collage\GiftShop.mdf;Integrated Security=True;Connect Timeout=30")
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim ds As DataSet


    Public Sub ExeComand(ByVal str As String)
        con.Open()
        cmd = New SqlCommand(str, con)
        cmd.ExecuteNonQuery()
        cmd.Dispose()

        con.Close()
    End Sub

    Public Function ViewCommand(ByVal str As String) As DataSet
        cmd = New SqlCommand(str, con)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)
        Return ds

    End Function



End Class
