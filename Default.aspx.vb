Imports System.Data.SqlClient
Imports System.Data.Sql
Public Class _Default

    Inherits Page
    'Create ADO.NET Objacts
    Private myConn As SqlConnection
    Private myCmd As SqlCommand
    Private myReader As SqlDataReader
    Private Results As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        'Store Id Ref in Session
        Session("IdNum") = 15

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        'Connection string
        myConn = New SqlConnection("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=" & "C:\USERS\KINGD\DESKTOP\DOCS\ZIP\QUESTION 3\QUESTION 3\APP_DATA\QUESTION3DB.MDF" & ";Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False")

        'Create command Object
        Dim strSql As String = "Insert into testing (Id,firstName, Gender) Values ( " & Session("IdNum") & ", '" & txtName.Text & "', '" & txtGender.Text & "' )"
        myCmd = myConn.CreateCommand
        myCmd.CommandText = strSql

        'Open the connection
        myConn.Open()

        myCmd.ExecuteNonQuery()

    End Sub

    Protected Sub btnDisplay_Click(sender As Object, e As EventArgs)
        Dim strSQL As String
        strSQL = "select * from testing "


        'IIf(Len(Trim(txtName.Text)) = 0, "NULL", txtName.Text)
        myConn = New SqlConnection("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=" & "C:\USERS\KINGD\DESKTOP\DOCS\ZIP\QUESTION 3\QUESTION 3\APP_DATA\QUESTION3DB.MDF" & ";Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False")
        myCmd = myConn.CreateCommand
        myCmd.CommandType = CommandType.Text
        myCmd.CommandText = strSQL
        myConn.Open()
        myCmd.ExecuteNonQuery()

        Dim sqlDt As DataTable = New DataTable()
        Dim da As New SqlDataAdapter(myCmd)
        da.Fill(sqlDt)

        grid1.DataSource = sqlDt
        grid1.DataBind()




    End Sub
End Class
