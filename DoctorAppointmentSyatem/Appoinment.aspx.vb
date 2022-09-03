Imports System.Data
Imports SqlQueryClass


Partial Class Appointment
    Inherits System.Web.UI.Page

    Dim sql As New SqlQueryClass


    Private Sub Insert()
        sql.ExeCommand("Insert into PatientMaster (Department,Doctor,Date,Time,FullName,PhoneNumber,Messsage) values('" + DDDepartment.Text + "','" + DDDoctor.Text + "','" + txtDate.Text + "','" + txtTime.Text + "','" + txtFullName.Text + "'," + txtPhoneNumber.Text + ",'" + txtMessage.Text + "')")
        Response.Write("<script>alert('Appoinment Booked Successfully')</script>")
    End Sub

    Protected Sub LBtnMakeAppoinment_Click(sender As Object, e As EventArgs) Handles LBtnMakeAppoinment.Click
        Insert()

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
