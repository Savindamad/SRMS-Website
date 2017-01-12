<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <title>reservation</title>
        <meta charset="utf-8">        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/reservation.js" type="text/javascript"></script>
    </head>
    <body>
        <%
            HttpSession sessionUser = request.getSession(false);
            String email = (String) sessionUser.getAttribute("email");

            User user1 = new User();
            user1.setEmail(email);
            user1.getUser();
            String log;

            String logLink;
            String name = user1.getName();
            String selectPath;
            if (name == "") {
                log = "login";
                logLink = "login.jsp?login=reservation.jsp";
                selectPath = "ReDirectPage";

            } else {
                log = "logout";
                logLink = "logout.jsp?page=reservation.jsp";
                selectPath = "Reservation";

            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

        %>
        <div class="header">
            <div class="wrap">
                <div class="top-header">
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo2.png" title="logo" /></a>
                    </div>
                    <div class="social-icons">
                        <ul>
                            <li><a href="#"><img src="images/facebook.png" title="facebook" /></a></li>
                            <li><a href="#"><img src="images/twitter.png" title="twitter" /></a></li>
                            <li><a href="#"><img src="images/google.png" title="google pluse" /></a></li>
                        </ul>
                    </div>
                    <div class="clear"> </div>
                </div>
                <div class="top-nav">
                    <div class="top-nav-left">
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="menu.jsp">Menu</a></li>
                            <li class="active"><a href="reservation.jsp">Reservation</a></li>
                            <li><a href="promotion.jsp">Promotion</a></li>
                            <li><a href="reviews.jsp">Reviews</a></li>
                            <div class="clear"> </div>
                        </ul>
                    </div>
                    <div class="top-nav-right">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>        
                            <li><button class="btn btn-default navbar-btn"><a href="${logLink}">${log}</a></button></li>
                        </ul>
                    </div>
                    <div class="clear"> </div>
                </div>
            </div>
        </div>
        <div class="content">
            <div><img src="images/reservation.png"></div>
        </div>
        <div class="container-fluid" style="margin-top:80px">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-6" style="background-color: #ffffff;">
                            <div class="row"  style="margin-top:20px" id="reservationInfo">
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="Bootstrap Thumbnail First" src="http://lorempixel.com/output/people-q-c-600-200-1.jpg" />
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="thumbnail">
                                        <div class="caption">
                                            <h3>Table number : 5</h3>
                                            <p>Number of seats : 8</p>
                                            <p><button class="btn btn-primary">Book</button></p>
                                        </div>
                                    </div>
                                </div>   
                            </div>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-3" style="background-color: #ffffff;">
                            <form role="form" style="margin-top:20px; margin-bottom:20px;">
                                <div class="form-group">
                                    <label for="type">Select table type</label>
                                    <select class="form-control" id="type">
                                        <option value="RES">Table</option>
                                        <option value="PVT">Private dining room</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="time">Select time</label>
                                    <select class="form-control" id="time">
                                        <option value="LUNCH">Lunch</option>
                                        <option value="DINNER">Dinner</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div class='input-group date' id='datetimepicker1'>
                                        <input type='date' id="date" class="form-control" min="2017-01-12" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="seats">Number of seats</label>
                                    <input class="form-control" type="number" name="numOfSeats" id="seats" min="1" max="15">
                                </div>
                                <input type="button" class="btn btn-default" name="reserve" id="reserve" value="Reserve table">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>