
Partial Class EmpDetails_EmployeeSalarySlip
    Inherits System.Web.UI.Page


    Protected Sub btnExit_Click(sender As Object, e As EventArgs) Handles btnExit.Click
        System.Environment.Exit(0)
    End Sub

    Protected Sub btnCalculateGrossSal_Click(sender As Object, e As EventArgs) Handles btnCalculateGrossSal.Click
        Session("empid") = txtEmpID.Text
        Session("empname") = txtEmpName.Text
        Session("designation") = txtDesignation.Text
        Session("basicsalary") = txtBasicPay.Text
        Session("da") = DDSelectDA.SelectedValue
        Session("hr") = DDSelectHR.SelectedValue
        Server.Transfer("DisplaySalarySlip.aspx")

    End Sub
End Class
