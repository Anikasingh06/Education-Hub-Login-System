

Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            txtUsername.Focus()
        End If
    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click

        Dim user As String = txtUsername.Text.Trim()
        Dim pass As String = txtPassword.Text.Trim()
        Dim role As String = ddlRole.SelectedValue

        If user = "" Or pass = "" Or role = "" Then
            Response.Write("<script>alert('All fields are required');</script>")
            Exit Sub
        End If

        Dim conStr As String = "Data Source=(local);Initial Catalog=Registration_formDB;Integrated Security=True"


        Using con As New SqlConnection(conStr)
            Dim insertQuery As String = "INSERT INTO Users (Username, Password, Role) VALUES (@Username, @Password, @Role)"

            Using cmd As New SqlCommand(insertQuery, con)
                cmd.Parameters.AddWithValue("@Username", user)
                cmd.Parameters.AddWithValue("@Password", pass)
                cmd.Parameters.AddWithValue("@Role", role)

                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using


        Using con As New SqlConnection(conStr)
            Dim loginQuery As String = "SELECT COUNT(*) FROM Users WHERE Username=@Username AND Password=@Password AND Role=@Role"

            Using cmd As New SqlCommand(loginQuery, con)
                cmd.Parameters.AddWithValue("@Username", user)
                cmd.Parameters.AddWithValue("@Password", pass)
                cmd.Parameters.AddWithValue("@Role", role)

                con.Open()
                Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())
                con.Close()

                If count > 0 Then
                    Response.Write("<script>alert('Registration & Login Successful');</script>")
                Else
                    Response.Write("<script>alert('Invalid Username or Password');</script>")
                End If
            End Using
        End Using

    End Sub

End Class
