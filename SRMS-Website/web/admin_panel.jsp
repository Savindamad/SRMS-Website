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
        <nav class="navbar navbar-inverse" style="margin-top:-2px; border-radius: 0px; border-color: #F8F8F8">
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
        <nav class="navbar navbar-inverse" style="margin-top: -2px; border-radius: 0px;">
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
                        <li><a href="acceptReviews.jsp">Accept reviews<span class="sr-only">(current)</span></a></li>
                        <li><a href="addNewPromotion.jsp">Add promotion</a></li>
                        <li><a href="removePromotion.jsp">Remove promotion</a></li>
                        <li><a href="addArticle.jsp">Add article</a></li>
                        <li><a href="removeArticle.jsp">Remove article</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container" style="margin-top:40px">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Admin panel</h4>
                </div>
            </div>
            <a href="acceptReviews.jsp">
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="dashboard-div-wrapper bk-clr-four" style="background-color: #4e91fd">
                        <i  class="fa fa-venus dashboard-div-icon" ></i>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            </div>

                        </div>
                        <h5>View and accept reviews</h5>
                    </div>
                </div>
            </a>
            <a href="addNewPromotion.jsp">
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="dashboard-div-wrapper bk-clr-four" style="background-color: #5CB85C">
                        <i  class="fa fa-edit dashboard-div-icon" ></i>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                            </div>

                        </div>
                        <h5>Add new promotion details</h5>
                    </div>
                </div>
            </a>
            <a href="removePromotion.jsp">
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="dashboard-div-wrapper bk-clr-four" style="background-color: #D9534F" >
                        <i  class="fa fa-cogs dashboard-div-icon" ></i>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                            </div>

                        </div>
                        <h5>Customize old promotions</h5>
                    </div>
                </div>
            </a>
            <a href="addArticle.jsp">
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="dashboard-div-wrapper bk-clr-four" style="background-color: #F0AD4E">
                        <i  class="fa fa-bell-o dashboard-div-icon" ></i>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                            </div>

                        </div>
                        <h5>Add new article</h5>
                    </div>
                </div>
            </a>
        </div>

        <script src="assets/js/jquery-1.11.1.js"></script>
        <script src="assets/js/bootstrap.js"></script>
    </body>
</html>

