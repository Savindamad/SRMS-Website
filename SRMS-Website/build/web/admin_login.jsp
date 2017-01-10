
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/admin_login.css">
    </head>
    <body>
    <body>
        <div>
            <div class="left" style="margin-top: 70px;">
                <img src="images/srms_logo.png" alt="Mountain View" style="height:300px;">
            </div>
            <div class="login right" style="margin-top: 70px;">
                <div class="login-screen">
                    <div class="app-title">
                        <h1>Smart RMS</h1>
                    </div>

                    <div class="login-form">
                        <div class="control-group">
                            <input type="text" class="login-field" name="username" value="" placeholder="username" id="login-name">
                            <label class="login-field-icon fui-user" for="login-name"></label>
                        </div>

                        <div class="control-group">
                            <input type="password" class="login-field" name="password" value="" placeholder="password" id="login-pass">
                            <label class="login-field-icon fui-lock" for="login-pass"></label>
                        </div>

                        <a class="btn btn-primary btn-large btn-block" href="">login</a>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
