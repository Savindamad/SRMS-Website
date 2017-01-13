<%@page import="Beans.Artical"%>
<%@page import="Beans.ArticalDetails"%>
<%@page import="Beans.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Beans.Reviews"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<html>
    <head>
        <title>reviews</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    </head>
    <style>
        .btn {
            margin-right: 30px;
        }
        .ifg {
            margin-top: 50px;
        }
    </style>
    <body>
        <script type="text/javascript" src="js/addComment.js"></script>
        <script srs="http://code.jquery.com/jquery-latest.js"></script>
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
                logLink = "login.jsp?login=reviews.jsp";
            } else {
                log = "logout";
                logLink = "logout.jsp?page=reviews.jsp";
            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

            Reviews reviews = new Reviews();
            ArrayList<Comment> comments = new ArrayList<Comment>();
            comments = reviews.getLastComments();

            Artical artical = new Artical();
            ArrayList<ArticalDetails> articals = new ArrayList<ArticalDetails>();
            articals = artical.GetArticals();
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
                            <li><a href="reservation.jsp">Reservation</a></li>
                            <li><a href="promotion.jsp">Promotion</a></li>
                            <li class="active"><a href="reviews.jsp">Reviews</a></li>
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
            <div><img src="images/reviews.png"></div>
            <div class="contact">
                <div class="wrap">		
                </div>
            </div>
        </div>
        <div class="container-fluid" style="margin-top : 80px">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-12" >
                                    <div class="tabbable" id="tabs-909797">
                                        <ul class="nav nav-tabs">
                                            <li>
                                                <a href="#panel-700466" data-toggle="tab">Articles</a>
                                            </li>
                                            <li class="active">
                                                <a href="#panel-521644" data-toggle="tab">Reviews</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane" id="panel-700466">
                                                <%
                                                    for (int i = 0; i < articals.size(); i++) {
                                                        String title = articals.get(i).getTitle();
                                                        String content = articals.get(i).getContent();

                                                %>
                                                <div class="col-md-12" style="margin-top : 40px">
                                                    <div class="thumbnail">
                                                        <div class="caption">
                                                            <h3><% out.print(title); %></h3>
                                                            <p><% out.print(content); %></p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <div class="tab-pane active" id="panel-521644">
                                                <div class="row" style="margin-top : 40px">
                                                    <div class="col-md-1"></div>
                                                    <div class="col-md-9">
                                                        <div class="form-group">
                                                            <textarea class="form-control" id ="comment" placeholder="Message"></textarea>
                                                        </div>
                                                        <input type="hidden" id="username" value="<% out.print(name); %>">
                                                    </div>
                                                    <div class="col-md-1">
                                                        <button type="submit" class="btn btn-lg btn-primary" id="commentPost">Post</button>
                                                    </div>  
                                                </div>
                                                <div style="margin-top : 30px">
                                                    <%
                                                        for (int i = 0; i < comments.size(); i++) {
                                                            String cusName = comments.get(i).getName();
                                                            String cusComment = comments.get(i).getComment();
                                                            String time = comments.get(i).getDate();

                                                    %>
                                                    <div class="row">
                                                        <div class="col-md-1"></div>
                                                        <div class="col-md-10">
                                                            <div class="media">
                                                                <a href="#" class="pull-left"><img alt="Bootstrap Media Preview" src="http://lorempixel.com/64/64/" class="media-object" /></a>
                                                                <div class="media-body">
                                                                    <h4 class="media-heading"><% out.print(cusName); %></h4>
                                                                    <p><% out.print(cusComment); %></p>
                                                                    <p><% out.print(time); %></p>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1">
                        </div>
                    </div>
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


