<%-- 
    Document   : signup
    Created on : Sep 8, 2016, 5:39:29 PM
    Author     : Savinda Keshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pontano+Sans" rel="stylesheet">
        <style>
            body {
                background-image:url(img/res.jpg);
            }
            table {
                border: 1px solid black;
                padding: 10px 10px;
                margin-left: 500px;
                margin-top: 100px;
                width: 350px;
                background-color: black;
                border-radius: 0.3em;
                opacity: 0.9;
                height: 300px;
            }

            h3 {
                
                margin-top:5px;
                font-size: 18px;
                color:darkblue;
            }

            tr {
                padding: 10px;
                width: 200px;
                
            }

            td {
                padding: 5px;
                height: 5px;
                color: white;
                font-family: 'Acme', sans-serif;
              
            }
            input{
                width: 100%;
                height: 20px;
            }

            .td1{
              background-color:gray; 
                
                
            }
            .button{
               margin-top: 5px;
               width: 100%;
               padding: 5px;
               height: 30px;
               color: black;
               font-family: 'Pontano Sans', sans-serif;
               background-color: #008fbf;
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
                    <td colspan="2"> Your Personal Information</td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="text" name="name" placeholder="Name"></td>
                </tr>
                <tr>
                    <td colspan="2"> Your E-mail </td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="text" name="email"placeholder="E-mail"></td>
                </tr>
                <tr>
                    <td colspan="2"> Date of Birth  </td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="date" name="bod"></td>
                </tr>
                <tr>
                    <td colspan="2"> Contact Number </td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="number" name="password" placeholder="Mobile Number"></td>
                </tr>
                <tr>
                    <td colspan="2"> Your Password </td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="password" name="password" placeholder="Password"></td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="password" name="rePassword" placeholder="Retype your Password"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"> <input class="button" type="submit" value="Submit" ></td>
                </tr>

            </table>
        </form>
    </body>
</html>
