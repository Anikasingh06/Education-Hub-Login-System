<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
        padding: 20px;
    }

    .main-container {
        width: 100%;
        max-width: 450px;
        background: white;
        border-radius: 20px;
        box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
        overflow: hidden;
    }

    .header {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 40px 30px;
        text-align: center;
    }

    .header .title {
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 10px;
        letter-spacing: 0.5px;
    }

    .header .subtitle {
        font-size: 14px;
        opacity: 0.95;
        font-weight: 300;
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
        color: #333;
        font-weight: 600;
        font-size: 14px;
    }

    input[type="text"],
    input[type="password"],
    select {
        width: 100%;
        padding: 12px 15px;
        border: 2px solid #e0e0e0;
        border-radius: 8px;
        font-size: 14px;
        transition: all 0.3s ease;
        background: #f9f9f9;
    }

    input[type="text"]:focus,
    input[type="password"]:focus,
    select:focus {
        outline: none;
        border-color: #667eea;
        background: white;
        box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
    }

    /* Radio buttons styling */
    table {
        width: 100%;
    }

    table td {
        padding: 8px 0;
    }

    input[type="radio"] {
        margin-right: 8px;
        width: 18px;
        height: 18px;
        cursor: pointer;
    }

    /* Checkbox styling */
    input[type="checkbox"] {
        margin-right: 8px;
        width: 18px;
        height: 18px;
        cursor: pointer;
    }

    /* Button styling */
    input[type="submit"],
    .btn-login {
        width: 100%;
        padding: 14px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
    }

    input[type="submit"]:hover,
    .btn-login:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(102, 126, 234, 0.6);
    }

    input[type="submit"]:active,
    .btn-login:active {
        transform: translateY(0);
    }

    .links {
        text-align: center;
        margin-top: 25px;
        padding-top: 20px;
        border-top: 1px solid #e0e0e0;
    }

    .links a {
        color: #667eea;
        text-decoration: none;
        font-size: 14px;
        font-weight: 500;
        transition: color 0.3s ease;
    }

    .links a:hover {
        color: #764ba2;
        text-decoration: underline;
    }

    .links br {
        display: block;
        content: "";
        margin: 8px 0;
    }

    .info-section {
        background: #f8f9ff;
        padding: 25px 30px;
        border-top: 1px solid #e0e0e0;
    }

    .info-section ul {
        list-style: none;
    }

    .info-section li {
        padding: 8px 0;
        color: #555;
        font-size: 14px;
        position: relative;
        padding-left: 25px;
    }

    .info-section li:before {
        content: "✓";
        position: absolute;
        left: 0;
        color: #667eea;
        font-weight: bold;
        font-size: 16px;
    }

    .footer {
        background: #f0f0f0;
        text-align: center;
        padding: 20px;
        font-size: 12px;
        color: #666;
    }

    /* Responsive adjustments */
    @media (max-width: 500px) {
        .main-container {
            max-width: 100%;
        }
        
        .header {
            padding: 30px 20px;
        }
        
        .header .title {
            font-size: 24px;
        }
        
        .login-panel {
            padding: 25px 20px 20px;
        }
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="main-container">

        <!-- HEADER -->
        <div class="header">
            <asp:Label ID="Title" runat="server" 
                Text="EDUCATION HUB"></asp:Label>
            <br /><br />
            <asp:Label ID="SubTitle" runat="server" 
                Text="Use a local account to log in"></asp:Label>
        </div>

        <!-- LOGIN PANEL -->
        <div class="login-panel">

            <!-- LOGIN PREFERENCE -->
            <div class="form-group">
                <asp:Label ID="Pref" runat="server" Text="Login Preference:"></asp:Label>
                <asp:RadioButtonList ID="LoginPref" runat="server">
                    <asp:ListItem>Email Login</asp:ListItem>
                    <asp:ListItem>Mobile Login</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <!-- LOGIN AS -->
            <div class="form-group">
                <asp:Label ID="lblRole" runat="server" Text="Login As:"></asp:Label>
                <asp:DropDownList ID="ddlRole" runat="server">
                    <asp:ListItem Text="-- Select Role --" Value="" />
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </div>

            <!-- USERNAME -->
            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>

            <!-- PASSWORD -->
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <!-- REMEMBER ME -->
            <div class="form-group">
                <asp:CheckBox ID="Remember" runat="server" 
                    Text="Remember me" />
            </div>

            <!-- LOGIN BUTTON -->
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" 
                    Text="Log in"/>
            </div>

            <!-- LINKS -->
            <div class="links">
                <asp:HyperLink ID="hlForgot" runat="server" NavigateUrl="#">
                    Forgot password?
                </asp:HyperLink>
                <br /><br />
                <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="#">
                    Register if you don't have a local account
                </asp:HyperLink>
            </div>

        </div>

        <!-- INFO SECTION -->
        <div class="info-section">
            <asp:BulletedList ID="Info" runat="server">
                <asp:ListItem>Access online courses</asp:ListItem>
                <asp:ListItem>Download study materials</asp:ListItem>
                <asp:ListItem>Track academic progress</asp:ListItem>
            </asp:BulletedList>
        </div>

        <!-- FOOTER -->
        <div class="footer">
            <asp:Label ID="Footer" runat="server"
                Text=" 2025 Education Hub. All rights reserved."></asp:Label>
        </div>

    </div>
    </form>
</body>
</html>