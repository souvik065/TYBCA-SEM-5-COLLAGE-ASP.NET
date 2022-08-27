Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Public Class SQlQueryClass
    Dim con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\BCA\TYBCA-SEM-5\Databases\Collage\Assignment2\OnlineShop.mdf;Integrated Security=True;Connect Timeout=30")
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim cmd As SqlCommand


    Public Sub Execomand(ByVal str As String)
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
