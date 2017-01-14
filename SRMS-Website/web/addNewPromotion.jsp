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
                        <li class="active"><a href="addNewPromotion.jsp">Add promotion<span class="sr-only">(current)</span></a></li>
                        <li><a href="removePromotion.jsp">Remove promotion</a></li>
                        <li><a href="addArticle.jsp">Add article</a></li>
                        <li><a href="removeArticle.jsp">Remove article</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Add new promotion</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Add new promotion
                            </div>
                            <div class="panel-body">
                                <form action="AddPromotion" enctype="multipart/form-data" method="POST">
                                    <div class="form-group">
                                        <label for="title">Title</label>
                                        <input type="text" class="form-control" name="title" placeholder="Promotion title" />
                                    </div>
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <input type="text" class="form-control" id="description" name="description" placeholder="Promotion description" />
                                    </div>
                                    <div class="form-group">
                                        <label for="file">File input</label>
                                        <input type="file" id="file" name="file" />
                                    </div>
                                    <input type="submit" class="btn btn-primary" value="Add promotion">
                                    <hr />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
