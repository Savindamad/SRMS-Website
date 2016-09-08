<%-- 
    Document   : login
    Created on : Sep 8, 2016, 5:36:52 PM
    Author     : Savinda Keshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title> Login Page </title>
        <style>
            
            body{
                background-image:url(../img/res.jpg);
            }
            
            table {
               
                background-color: #fff;
                opacity:0.7;
                border:1px solid black;
                border-radius:0.3em;
                padding:40px;
                margin-left:40%;
                margin-top:20%;
            }
            td {
                padding:4px;
                border-style: none;
            
            }
            .input {
                
                background-color:transparent;
                width:100%;
                border:2px solid gray;
                padding: 5px;
                border-radius:0.2em;
                
                
            }
            
            td.img {
                width:50%;
            }
            
            .button{
                background-color:violet;
                border:2px solid gray;
                margin:2px 2px;
                width:100%;
                padding:5px;
                font-size: 18px;
                font:blue;
            }
            
            .td1 {
                background-color: black;
            }
            
        </style>
    </head>
    <body>
        <table>
            
            <tr>
                <td class="td1" colspan="2"><img src=../img/login.png></td>
            </tr>
            
            <tr>
                <td colspan="2"><input class="input" type="text" placeholder="Username"></td>
                </tr>
            <tr>
                <td colspan="2"><input class="input" type="password" placeholder="Password"></td>
                </tr>
            </tbody>
            <tr>
                <td colspan="2" align="center"><input type="submit" class="button" value="Login">
                </tr>
            <tr>
                <td colspan="2" align="center"><a href="signup.jsp">Not a member Sign up here</a></td>
        </tr>
            </table>
    </body>
</html>
