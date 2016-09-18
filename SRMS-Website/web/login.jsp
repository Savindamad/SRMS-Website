
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
        <form class="form" name="login" onSubmit="return validateForm();" action="Login" method="post">
            <table class="table">
                <tr>
                    <td colspan="2"><img ${pageContext.request.contextPath} class="img" src="img/login.png"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="text" name="email" placeholder="username"></td>
                </tr> 
                <tr>
                    <td><input type="password" name="password" placeholder="password"></td>
                </tr>
                <tr><td colspan="2" align=center>
                        <input class="button" type="submit" value="Login"/></td></tr>
                <tr><td colspan="2" align=center>
                        <a href="signup.jsp">Signup Here</a></td></tr>
            </table>
        </form>

        <script>
            function validateForm() {
                var un = document.loginform.usr.value;
                var pw = document.loginform.pword.value;
                var username = "username";
                var password = "password";
                if ((un == username) && (pw == password)) {
                    return true;
                } else {
                    alert("please check your username and password");
                    return false;
                }
            }
        </script>



    </body>



</html>
