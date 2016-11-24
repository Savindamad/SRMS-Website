<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<html>
    <head>
        <title>promotion</title>
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
                logLink = "../login.jsp?login=nav/promotion.jsp";
            } else {
                log = "logout";
                logLink = "../logout.jsp?page=nav/promotion.jsp";
            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

        %>
        <!----start-header----->
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
                            <li><a href="reservation.jsp">Reservations</a></li>
                            <li class="active"><a href="promotion.jsp">Promotions</a></li>
                            <li><a href="reviews.jsp">Reviews</a></li>
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
            <div><img src="../images/promosion.png"></div>
            <div class="gallerys">
                <div class="wrap">
                    <h3>Promotions</h3>
                    <div class="gallery-grids">

                        <div class="gallery-grid">
                            <a href="#"><img src="../images/prom1.jpg" alt=""><span>Curries & Mains</span></a>
                            <h4>GARLIC CHICKEN</h4>
                            <p>Price: Rs.850
                                <br>
                                Offer: 25% Discount
                                <br>
                                Availability: Both Lunch and Dinner
                                <br>
                                Description: Chunks of boneless chicken cooked with Chef's blend of special spices and served in a garlic gravy</p>
                        </div>
                        <div class="clear"> </div>

                    </div>
                </div>					
            </div>
        </div>

    </body>
</html>


