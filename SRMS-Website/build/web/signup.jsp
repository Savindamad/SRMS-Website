
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pontano+Sans" rel="stylesheet">
        
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <style>

            table {
                border: 1px solid black;
                padding: 10px 10px;
                margin-left: 800px;
                margin-top: 150px;
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
                width: 95%;
                height: 35px;
                margin-left: 6px;
                margin-right: 6px;
                border-radius: 0.4em;
            }

            .td1{
                background-color:gray; 


            }
            .button{
                margin-top: 5px;
                width: 95%;
                padding: 5px;
                height: 36px;
                margin-left: 7px;
                margin-right: 7px;

                color: black;
                font-family: 'Pontano Sans', sans-serif;
                background-color: #008fbf;
            }

            .dob {
                width: 53%;
                margin-left: 40px;
            }
            .l1 {
                margin-left: 10px;
            }

            .img {
                margin-left: 50px;

            }
        </style>

    </head>
    <body style="background-color: #F5F5F5">
        <script src="js/validate.js"></script>

        <div class="container-fluid" style="margin-top : 100px">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-5">
                            <img alt="Bootstrap Image Preview" style="margin-top: 50px; width: 500px" src="images/slide1/logo.png" />
                        </div>
                        <div class="col-md-3" style="background-color : #afaeae">
                            <form role="form" action="Register" method="post" onsubmit="return validateSignupForm();" name="signUp">
                                
                                <div class="form-group">
                                    <p><br></p>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="name" id="name" placeholder="Name" required="required">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="email" id="email" placeholder="E-mail" required="required" onblur='validateEmail()'>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">
                                        Email address
                                    </label>
                                    <input class="dob" type="date"  name="birthday" id="birthday" required="required" onblur='validateDate()'>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="contact_no" id="contact_no" placeholder="Mobile Number" required="required" onblur='validateContactNo()'>
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" placeholder="Password" required="required" onblur='validatePassword()'>
                                </div>
                                <div class="form-group">
                                    <td colspan="2"> <input type="password" name="rePassword" id="repassword" placeholder="Retype your Password" required="required" onblur='validateRePassword()'>
                                </div>
                                <button type="submit" class="btn btn-default" style="width : 300px">
                                    SignUp
                                </button>
                                <div class="form-group">
                                    <p><br></p>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-2">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
