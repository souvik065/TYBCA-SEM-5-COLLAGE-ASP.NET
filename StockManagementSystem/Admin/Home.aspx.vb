﻿
Partial Class Home
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("Islogin") = False Then
            Response.Redirect("UserLogin.aspx")
        End If

    End Sub
End Class
