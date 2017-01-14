<%-- 
    Document   : admin_panel
    Created on : Jan 10, 2017, 5:52:19 AM
    Author     : savinda
--%>

<%@page import="Beans.Artical"%>
<%@page import="Beans.ArticalDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Admin panel</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" /> 
    </head>
    <body>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/customizeArticle.js"></script>
        <%
            HttpSession sessionUser = request.getSession(false);
            String name = (String) sessionUser.getAttribute("name");

            if (name == null) {
                request.setAttribute("login", "fail");
                response.sendRedirect("admin_login.jsp?login=fail");
            }

        %>
        <nav class="navbar navbar-default" style="margin-top:-2px; border-radius: 0px; border-color: #F8F8F8">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="admin_panel.jsp">
                            <img style="width : 250px; margin-top: -25px; margin-left:20px;" src="images/srms_logo1.png">
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
                        <li><a href="acceptReviews.jsp">Accept reviews</a></li>
                        <li><a href="addNewPromotion.jsp">Add promotion</a></li>
                        <li><a href="removePromotion.jsp">Remove promotion</a></li>
                        <li><a href="addArticle.jsp">Add article</a></li>
                        <li class="active"><a href="removeArticle.jsp">Remove article<span class="sr-only">(current)</span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container-fluid" style="margin-top: 50px">
            <div class="row" id="articleReplaceId">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="tabbable" id="tabs-638888">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#panel-621843" data-toggle="tab">Displayed</a>
                            </li>
                            <li>
                                <a href="#panel-733178" data-toggle="tab">Hidden</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="panel-621843">
                                <div id="" style="margin-top: 40px">
                                    <%                                        Artical articles = new Artical();
                                        ArrayList<ArticalDetails> articleDetails = new ArrayList<ArticalDetails>();
                                        articleDetails = articles.GetArticals();

                                        for (int i = 0; i < articleDetails.size(); i++) {
                                            ArticalDetails temp = articleDetails.get(i);
                                    %>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="thumbnail">
                                                <div class="caption">
                                                    <h3><% out.print(temp.getTitle()); %></h3>
                                                    <p><% out.print(temp.getContent()); %></p>
                                                    <p><small>-<cite><% out.print(temp.getAboutArticle()); %></cite></small></p>
                                                    <a href="<% out.print(temp.getArticleLink()); %>">Link</a>
                                                    <p></p>
                                                    <p>
                                                        <button class="btn btn-danger" onclick="deleteFunction(<% out.print(temp.getId()); %>)">Delete</button>
                                                        <button class="btn btn-primary" onclick="removeFunction(<% out.print(temp.getId()); %>)">Hide</button>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                        }
                                        if (articleDetails.size() == 0) {
                                    %>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10"><h4>No articles displayed</h4></div>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-733178">
                                <div id="" style="margin-top: 40px">
                                    <%
                                        ArrayList<ArticalDetails> articleNotDisplayed = new ArrayList<ArticalDetails>();
                                        articleNotDisplayed = articles.getNotDisplayedArticals();

                                        for (int i = 0; i < articleNotDisplayed.size(); i++) {
                                            ArticalDetails temp = articleNotDisplayed.get(i);
                                    %>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="thumbnail">
                                                <div class="caption">
                                                    <h3><% out.print(temp.getTitle()); %></h3>
                                                    <p><% out.print(temp.getContent()); %></p>
                                                    <p><small>-<cite><% out.print(temp.getAboutArticle()); %></cite></small></p>
                                                    <a href="<% out.print(temp.getArticleLink()); %>">Link</a>
                                                    <p></p>
                                                    <p>
                                                        <button class="btn btn-danger" onclick="deleteFunction(<% out.print(temp.getId()); %>)">Delete</button>
                                                        <button class="btn btn-success" onclick="repostFunction(<% out.print(temp.getId()); %>)">Re-post</button>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                        }
                                        if (articleNotDisplayed.size() == 0) {
                                    %>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10"><h4>No articles hidden</h4></div>
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
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/scripts.js"></script>
    </body>
</html>
