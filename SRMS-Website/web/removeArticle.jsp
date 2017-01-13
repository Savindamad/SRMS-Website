<%-- 
    Document   : admin_panel
    Created on : Jan 10, 2017, 5:52:19 AM
    Author     : savinda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Admin panel</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
    </head>
    <body>
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
                        <li><a href="removePromotion.jsp">Remove promotion</a></li>
                        <li><a href="addArticle.jsp">Add article</a></li>
                        <li class="active"><a href="removeArticle.jsp">Remove article<span class="sr-only">(current)</span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
