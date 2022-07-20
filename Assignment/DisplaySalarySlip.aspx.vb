
Partial Class DisplaySalarySlip
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbempid.Text = Session("empid")
        lbempname.Text = Session("empname")
        lbdesignation.Text = Session("designation")
        lbbasicsalary.Text = Session("basicsalary")
        lbda.Text = Convert.ToDecimal(Session("basicsalary")) * Convert.ToDecimal(Session("da")) / 100
        lbhr.Text = Convert.ToDecimal(Session("basicsalary")) * Convert.ToDecimal(Session("hr")) / 100
        lbgrosssal.Text = Convert.ToDecimal(lbbasicsalary.Text) + Convert.ToDecimal(lbda.Text) + Convert.ToDecimal(lbhr.Text)

    End Sub
End Class
