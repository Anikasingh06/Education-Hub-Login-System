<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Education Hub - Login</title>

<style type="text/css">
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.main-container {
    width: 100%;
    max-width: 1100px;   
    margin: 40px auto;
    background: #fff;
    border-radius: 20px;
    box-shadow: 0 20px 60px rgba(0,0,0,0.3);
}

.header {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: #fff;
    padding: 40px 30px;
    text-align: center;
}

.header h1 {
    font-size: 26px;
    font-weight: 700;
}

.header p {
    font-size: 14px;
    margin-top: 8px;
}

.login-panel {
    padding: 35px 30px 25px;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    font-size: 14px;
    font-weight: 600;
}

input[type="text"],
input[type="password"],
select {
    width: 100%;
    padding: 12px;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    font-size: 14px;
}

input:focus,
select:focus {
    outline: none;
    border-color: #667eea;
}


#LoginPref table {
    width: auto;
}

#LoginPref td {
    display: flex;
    align-items: center;
    padding: 6px 0;
}

#LoginPref input[type="radio"] {
    width: 18px;
    height: 18px;
    margin-right: 10px;
}

.form-group span {
    display: flex;
    align-items: center;
}

input[type="checkbox"] {
    width: 18px;
    height: 18px;
    margin-right: 10px;
}

input[type="submit"] {
    width: 100%;
    padding: 14px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: #fff;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
}

.links {
    text-align: center;
    margin-top: 20px;
    border-top: 1px solid #e0e0e0;
    padding-top: 15px;
}

.links a {
    color: #667eea;
    text-decoration: none;
    font-size: 14px;
}

.info-section {
    background: #f8f9ff;
    padding: 20px 30px;
}

.info-section ul {
    list-style: none;
}

.info-section li {
    padding-left: 25px;
    position: relative;
    margin-bottom: 8px;
}

.info-section li:before {
    content: "✓";
    position: absolute;
    left: 0;
    color: #667eea;
    font-weight: bold;
}


.footer {
    text-align: center;
    padding: 15px;
    font-size: 12px;
    background: #f0f0f0;
}
</style>

</head>

<body>
<form id="form1" runat="server">

<div class="main-container">

    <!-- HEADER -->
    <div class="header">
        <h1>EDUCATION HUB</h1>
        <p>Use a local account to log in</p>
    </div>

    <!-- LOGIN PANEL -->
    <div class="login-panel">

        <div class="form-group">
            <label>Login Preference:</label>
            <asp:RadioButtonList ID="LoginPref" runat="server">
                <asp:ListItem>Email Login</asp:ListItem>
                <asp:ListItem>Mobile Login</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="form-group">
            <label>Login As:</label>
            <asp:DropDownList ID="ddlRole" runat="server">
                <asp:ListItem Text="-- Select Role --" Value="" />
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Teacher</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label>Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" />
        </div>

        <div class="form-group">
            <label>Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </div>

        <div class="form-group">
            <asp:CheckBox ID="Remember" runat="server" Text="Remember me" />
        </div>

        <div class="form-group">
            <asp:Button ID="btnLogin" runat="server" Text="Log in" />
        </div>

        <div class="links">
            <asp:HyperLink ID="HyperLink1" runat="server">Forgot password?</asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink2" runat="server">Register if you don't have a local account</asp:HyperLink>
        </div>
    </div>

    <!-- INFO -->
    <div class="info-section">
        <ul>
            <li>Access online courses</li>
            <li>Download study materials</li>
            <li>Track academic progress</li>
        </ul>
    </div>

    <!-- FOOTER -->
    <div class="footer">
        @2025 Education Hub. All rights reserved.
    </div>

</div>

</form>
</body>
</html>

