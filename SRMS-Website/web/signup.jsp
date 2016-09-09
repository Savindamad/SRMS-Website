<%-- 
    Document   : signup
    Created on : Sep 8, 2016, 5:39:29 PM
    Author     : Savinda Keshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table {
                border: 1px solid black;
                padding: 10px 10px;
                margin-left: 500px;
                margin-top: 200px;
                width: 300px;
                border-radius: 0.3em;
            }

            h3 {
                margin-top: 5px;
                font-size: 18px;
                color:darkblue;
            }

            tr {
                padding: 10px;
                width: 200px;
            }

            td {
                padding: 5px;
                height: 20px;

            }

            .td1{
                background-color: antiquewhite;
                border-bottom: 1px solid black;
            }




        </style>

    </head>
    <body>
        <form action="SignUp" method="post">
            <table>
                <tr>
                    <td class="td1" align="center"><h3>Register Here</h3></td>
                </tr>
                <tr>
                    <td colspan="2"> Your Personal Information </td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="text" name="name" placeholder="Name"></td>
                </tr>
                <tr>
                    <td colspan="2"> Your Address </td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="text" name="email"placeholder="E-mail"></td>
                </tr>
                <tr>
                    <td colspan="2"> Your Password </td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="text" name="password" placeholder="Password"></td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="text" name="rePassword" placeholder="Retype Password"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"> <input type="submit" value="Submit" ></td>
                </tr>

            </table>
        </form>
    </body>
</html>
