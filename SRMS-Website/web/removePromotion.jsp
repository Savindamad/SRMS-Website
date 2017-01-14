<%-- 
    Document   : admin_panel
    Created on : Jan 10, 2017, 5:52:19 AM
    Author     : savinda
--%>

<%@page import="Beans.PromotionDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Beans.Promotion"%>
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
        <script type="text/javascript" src="js/customizePromotion.js"></script>
        <%
            HttpSession sessionUser = request.getSession(false);
            String name = (String) sessionUser.getAttribute("name");

            if (name == null) {
                request.setAttribute("login", "fail");
                response.sendRedirect("admin_login.jsp?login=fail");
            } else {

            }

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
                        <li><a href="acceptReviews.jsp">Accept reviews</a></li>
                        <li><a href="addNewPromotion.jsp">Add promotion</a></li>
                        <li class="active"><a href="removePromotion.jsp">Remove promotion<span class="sr-only">(current)</span></a></li>
                        <li><a href="addArticle.jsp">Add article</a></li>
                        <li><a href="removeArticle.jsp">Remove article</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container-fluid" style="margin-top: 50px">
            <div class="row" id="promoReplaceId">
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
                                <div style="margin-top: 40px">
                                    <%                                        Promotion promotions = new Promotion();
                                        ArrayList<PromotionDetails> proDetails = new ArrayList<PromotionDetails>();
                                        proDetails = promotions.getPromotions();

                                        for (int i = 0; i < proDetails.size(); i++) {
                                            PromotionDetails temp = proDetails.get(i);
                                    %>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="thumbnail">
                                                <img alt="Bootstrap Thumbnail First" src="<% out.print(temp.getImagePath()); %>" />
                                                <div class="caption">
                                                    <h3><% out.print(temp.getTitle()); %></h3>
                                                    <p><% out.print(temp.getDescription()); %></p>
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
                                        if (proDetails.size() == 0) {
                                    %>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10"><h4>No promotions displayed</h4></div>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-733178">
                                <div id="" style="margin-top: 40px">
                                    <%
                                        ArrayList<PromotionDetails> proNotDetails = new ArrayList<PromotionDetails>();
                                        proNotDetails = promotions.getNotDisplayedPromotions();

                                        for (int i = 0; i < proNotDetails.size(); i++) {
                                            PromotionDetails temp = proNotDetails.get(i);
                                    %>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="thumbnail">
                                                <img alt="Bootstrap Thumbnail First" src="<% out.print(temp.getImagePath()); %>" />
                                                <div class="caption">
                                                    <h3><% out.print(temp.getTitle()); %></h3>
                                                    <p><% out.print(temp.getDescription()); %></p>
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
                                        if (proNotDetails.size() == 0) {
                                    %>
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10"><h4>No promotions hidden</h4></div>
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
