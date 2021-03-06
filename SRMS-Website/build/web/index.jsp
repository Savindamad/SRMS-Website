<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Maharaja Palace</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link href="css/slider.css" rel="stylesheet" type="text/css"  media="all" />
        <link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen" />

        <script type="text/javascript" src="js/map.js"></script> 
        <script type="text/javascript" src="js/jquery.min.js"></script> 
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script> 
        <script type="text/javascript" src="js/camera.min.js"></script>
        <script type="text/javascript" src="js/jquery.lightbox.js"></script>

        <script type="text/javascript">
            $(function () {
                $('.gallery a').lightBox();
            });
        </script>
        <script type="text/javascript">
            jQuery(function () {
                jQuery('#camera_wrap_1').camera({
                    pagination: false,
                });
            });
        </script>
    </head>
    <style>
        .btn {
            margin-right: 30px;
        }
    </style>
    <body>
        <%
            HttpSession sessionUser = request.getSession(false);
            String email = (String) sessionUser.getAttribute("email");

            User user1 = new User();
            user1.setEmail(email);
            user1.getUser();
            String log;
            String logLink;
            String sign = "Signup";
            String signLink;
            String name = user1.getName();
            if (name == "") {
                log = "login";
                logLink = "login.jsp?login=index.jsp";
                sign = "Signup";
                signLink = "signup.jsp";

            } else {
                log = "logout";
                logLink = "logout.jsp?page=index.jsp";
                signLink = "#";
                sign = name;
            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

        %>
        <!----start-header----->
        <div class="header">
            <div class="wrap">
                <div class="top-header">
                    <div class="logo">
                        <a href="/SRMS-Website/index.jsp"><img src="images/logo2.png" title="logo" /></a>
                    </div>
                    <div class="social-icons">
                        <ul>
                            <li><a href="https://www.facebook.com/pages/Maharaja-Palace-Colombo-7/102829946533873?nr"><img src="images/facebook.png" title="facebook" /></a></li>
                            <li><a href="#"><img src="images/twitter.png" title="twitter" /></a></li>
                            <li><a href="#"><img src="images/google.png" title="google pluse" /></a></li>
                        </ul>
                    </div>
                    <div class="clear"> </div>
                </div>
                <div class="top-nav">
                    <div class="top-nav-left">
                        <ul>
                            <li class="active"><a href="/SRMS-Website/index.jsp">Home</a></li>
                            <li><a href="menu.jsp">Menu</a></li>
                            <li><a href="reservation.jsp">Reservation</a></li>
                            <li><a href="promotion.jsp">Promotion</a></li>
                            <li><a href="reviews.jsp">Reviews</a></li>
                            <div class="clear"> </div>
                        </ul>
                    </div>
                    <div class="top-nav-right">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="${signupLink}"><span class="glyphicon glyphicon-user"></span><% out.print(" "+sign); %></a></li>        
                            <li><button class="btn btn-default navbar-btn"><a href="${logLink}">${log}</a></button></li>
                        </ul>
                    </div>
                    <div class="clear"> </div>
                </div>
            </div>
        </div>
        <div class="slider">					     
            <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">									           
                <div data-src="images/slide1.jpg"></div> 
                <div data-src="images/slider2.jpg"></div>
                <div data-src="images/slider3.jpg"></div>
                <div data-src="images/slider4.jpg"></div>
            </div>
            <div class="clear"> </div>					       
        </div>					
        <div class="content">
            <div class="top-grids">
                <div class="wrap">
                    <div class="top-grid">
                        <a href="aboutus.html" target="iframe"><img src="images/icon2.png" title="icon-name"></a>
                        <h3>About us</h3>
                        <p> </p>

                    </div>
                    <div class="top-grid">
                        <a href="contactus.html" target="iframe"><img src="images/icon2.png" title="icon-name"></a>
                        <h3>Contact us</h3>
                        <p>  </p>

                    </div>
                    <div class="top-grid last-topgrid">
                        <a href="map.html" target="iframe"><img src="images/icon3.png" title="icon-name"></a>
                        <h3>Location</h3>
                        <p> </p>

                    </div>
                    <div class="clear"> </div>
                </div>
            </div>
            <div class="mid-grid">
                <iframe name="iframe" class="wrap" src="aboutus.html"></iframe>
            </div>
            <div class="bottom-grids">
                <div class="wrap">
                    <div class="bottom-grid1"></div>
                </div>				
            </div>
        </div>
        <div class="footer">
            <div class="wrap">
                <div class="footer-grid">
                    <h3></h3>
                </div>
                <div class="footer-grid center-grid">
                    <h3></h3>
                    <ul>

                    </ul>
                </div>
                <div class="footer-grid"></div>
                <div class="clear"> </div>
            </div>
            <div class="clear"> </div>
        </div>
        <div class="copy-right">
            <div class="top-to-page">
                <a href="#top" class="scroll"></a>
                <div class="clear"></div>
            </div>	
        </div>
    </body>
</html>

