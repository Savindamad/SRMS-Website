<%@page import="Beans.PromotionDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Beans.Promotion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<html>
    <head>
        <title>promotion</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
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
            String name = user1.getName();
            if (name == "") {
                log = "login";
                logLink = "login.jsp?login=promotion.jsp";
            } else {
                log = "logout";
                logLink = "logout.jsp?page=promotion.jsp";
            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

            Promotion promotions = new Promotion();
            ArrayList<PromotionDetails> proDetails = new ArrayList<PromotionDetails>();
            proDetails = promotions.getPromotions();

        %>
        <!----start-header----->
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
                            <li><a href="reservation.jsp">Reservations</a></li>
                            <li class="active"><a href="promotion.jsp">Promotions</a></li>
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
            <div><img src="images/promosion.png"></div>
            <div class="gallerys">				
            </div>
        </div>
        <div class="container-fluid" style="margin-top:40px">
            <div class="row">
                <div class="col-md-12">
                    <%
                        for(int i = 0; i<proDetails.size(); i++){
                            PromotionDetails temp = proDetails.get(i);
                    %>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="thumbnail">
                                <img alt="Bootstrap Thumbnail First" src="<% out.print(temp.getImagePath()); %>" />
                                <div class="caption">
                                    <h3><% out.print(temp.getTitle()); %></h3>
                                    <p><% out.print(temp.getDescription()); %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>


