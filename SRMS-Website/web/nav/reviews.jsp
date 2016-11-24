<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<html>
    <head>
        <title>reviews</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="../css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
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
            if (name == "") {
                log = "login";
                logLink = "../login.jsp?login=nav/reviews.jsp";
            } else {
                log = "logout";
                logLink = "../logout.jsp?page=nav/reviews.jsp";
            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

        %>
        <div class="header">
            <div class="wrap">
                <div class="top-header">
                    <div class="logo">
                        <a href="../index.jsp"><img src="../images/logo2.png" title="logo" /></a>
                    </div>
                    <div class="social-icons">
                        <ul>
                            <li><a href="#"><img src="../images/facebook.png" title="facebook" /></a></li>
                            <li><a href="#"><img src="../images/twitter.png" title="twitter" /></a></li>
                            <li><a href="#"><img src="../images/google.png" title="google pluse" /></a></li>
                        </ul>
                    </div>
                    <div class="clear"> </div>
                </div>
                <div class="top-nav">
                    <div class="top-nav-left">
                        <ul>
                            <li><a href="../index.jsp">Home</a></li>
                            <li><a href="menu.jsp">Menu</a></li>
                            <li><a href="reservation.jsp">Reservation</a></li>
                            <li><a href="promotion.jsp">Promotion</a></li>
                            <li class="active"><a href="reviews.jsp">Reviews</a></li>
                            <div class="clear"> </div>
                        </ul>
                    </div>
                    <div class="top-nav-right">
                        <li><a href="${logLink}">${log}</a> </li>      
                    </div>
                    <div class="clear"> </div>
                </div>
            </div>
        </div>
        <div class="content">
            <div><img src="../images/reviews.png"></div>
            <div class="contact">
                <div class="wrap">
                    <div class="section group">
                        <div>
                            <ul class="nav1">
                                <li class="li1 active"><a class="a1" href="#" target="ihack">Articles</a></li>
                                <li class="li1"><a class="a1" href="#" target="ihack">Reviews</a></li>
                                <li class="li1"><a class="a1" href="#" target="ihack">Reviews of food items</a></li>
                            </ul>
                        </div>
                        <div>
                            <iframe name="ihack" width="100%" height="600px" style="border:1px solid black;"> </iframe>
                        </div>
                        <div class="col span_1_of_3">
                            <div class="contact_info">
                                <h3>Find Us Here</h3>
                                <div class="map" style="width:350px;height:300px" id="map"></div>
                                <script>
                                    function myMap() {
                                        var mymap = new google.maps.LatLng(6.905753, 79.860356);
                                        var mapCanvas = document.getElementById("map");
                                        var mapOptions = {
                                            center: mymap, zoom: 10
                                        };
                                        var map = new google.maps.Map(mapCanvas, mapOptions);
                                        var marker = google.maps.marker({
                                            position: mymap,
                                            map: map,
                                            icon: 'http://google-maps-icons.googlecode.com/files/train.png'
                                        });
                                    }
                                </script>
                                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASH2I2BzZYqLRjwXoS5ixRWCNmbYnIYiQ &callback=myMap"></script>
                            </div>	
                        </div>				
                        <div class="col span_2_of_3">
                            <div class="contact-form">
                                <div class="company_address">
                                    <h3>Information :</h3>
                                    <p>500 Lorem Ipsum Dolor Sit,</p>
                                    <p>22-56-2-9 Sit Amet, Lorem,</p>
                                    <p>USA</p>
                                    <p>Phone:(00) 222 666 444</p>
                                    <p>Fax: (000) 000 00 00 0</p>
                                    <p>Email: <span><a href="#">info(at)mycompany.com</span></a></p>
                                    <p>Follow on: <span><a href="#">Facebook</a></span>, <span><a href="#">Twitter</a></span></p>
                                </div>
                            </div>
                        </div>				
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>


