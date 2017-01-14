<%-- 
    Document   : acceptReview
    Created on : Jan 11, 2017, 10:10:58 AM
    Author     : savinda
--%>

<%@page import="Beans.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Beans.Reviews"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accept reviews</title>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/style.css" rel="stylesheet">
    </head>

    <body>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/reviews.js" type="text/javascript"></script>
        <%
            HttpSession sessionUser = request.getSession(false);
            String name = (String) sessionUser.getAttribute("name");

            if (name == null) {
                request.setAttribute("login", "fail");
                response.sendRedirect("admin_login.jsp?login=fail");
            }
            Reviews reviews = new Reviews();
            ArrayList<Comment> comments = new ArrayList<Comment>();
            comments = reviews.getReviews();
        %>
        <nav class="navbar navbar-default" style="margin-top:-2px; border-radius: 0px; border-color: #F8F8F8">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="admin_panel.jsp">
                            <img alt="Brand" src="...">
                        </a>
                    </div>
                    <div class="navbar-right" style="margin-right: 30px">
                        <button type="submit" class="btn btn-default navbar-btn"><a href="logoutAdmin.jsp">Logout</a></button>
                    </div>
                </div>
            </nav>
        </nav>
        <nav class="navbar navbar-default" style="margin-top: -2px; border-radius: 0px; border-color: #F8F8F8">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="admin_panel.jsp"></a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="acceptReviews.jsp">Accept reviews<span class="sr-only">(current)</span></a></li>
                        <li><a href="addNewPromotion.jsp">Add promotion</a></li>
                        <li><a href="removePromotion.jsp">Remove promotion</a></li>
                        <li><a href="addArticle.jsp">Add article</a></li>
                        <li><a href="removeArticle.jsp">Remove article</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row" style="margin-top: 100px">
                <div class="col-md-12">
                    <div id="reviews">
                        <%
                            for (int i = 0; i < comments.size(); i++) {
                                Comment reviewComment = comments.get(i);
                                String comment = reviewComment.getComment();
                                String userName = reviewComment.getName();
                                String commentId = reviewComment.getCommentId();
                        %>
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-8">
                                <div class="thumbnail">
                                    <div class="caption">
                                        <h3><% out.print(userName); %></h3>
                                        <p><% out.print(comment); %></p>
                                        <div>
                                            <input type="hidden" id="commentId" value="<% out.print(commentId); %>">
                                            <button class="btn btn-primary" id="accept">Accept</button>
                                            <button class="btn btn-danger" id="reject">Reject</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                            if (comments.size() == 0) {
                        %>
                        <div class="col-md-1"></div>
                        <div>
                            <h4>Empty</h4>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/scripts.js"></script>
    </body>
</html>
