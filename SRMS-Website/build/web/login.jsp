
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title> Login Page </title>
        <style>

            body{
                background-image:url(img/res.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            }

            .form{
                margin-left: 200px;

            }

            table{
                border: 1px solid black;
                margin-top: 250px;
                margin-left:650px;
                border-radius: 0.2em;
                padding: 10px;
                height: 100px;
                background-color: black;
                opacity: 0.9;
                width: 300px;
                height: 250px;
            }

            td {
                padding: 5px;
                height: 20px;
            }
            input{
                width: 90%;
                padding: 5px;
                height: 15px;
                margin-left: 7px;
                margin-right: 7px;
                border-radius: 0.3em;
            }
            .button{
                width: 95%;
                padding: 5px;
                height: 30px;
                background-color: #008fbf;
                margin-left: 7px
            }
        </style>
        
    </head>
    <body>
        <script src="js/validate.js"></script>
        <form class="form" name="login" onSubmit="return validateLoginForm();" action="Login" method="post">
            <table class="table">
                <tr>
                    <td colspan="2"><img ${pageContext.request.contextPath} class="img" src="img/login.png"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" name="email" id="email" onblur='validateEmail()' placeholder="username" required="required"></td>
                </tr> 
                <tr>
                    <td><input type="password" name="password" id="password" placeholder="password" required="required"></td>
                </tr>
                <tr><td colspan="2" align=center>
                        <input class="button" type="submit" value="Login"/></td></tr>
                <tr><td colspan="2" align=center>
                        <a href="signup.jsp">Signup Here</a></td></tr>
            </table>
        </form>
    </body>
</html>
