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
        <div class="navbar navbar-inverse set-radius-zero" style="height: 120px;">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="admin_panel.jsp">
                        <img src="images/srms_logo.png" style="height: 80px"/>
                    </a>

                </div>

            </div>
        </div>
        <div class="content-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-head-line">Admin panel</h4>

                    </div>

                </div>
                <div class="row">
                    <a href="#">
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
                    <a href="admin_nav/newPromotion.jsp">
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
                    <a href="#">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="dashboard-div-wrapper bk-clr-four" style="background-color: #F0AD4E" >
                                <i  class="fa fa-cogs dashboard-div-icon" ></i>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    </div>

                                </div>
                                <h5>Simple Text Here </h5>
                            </div>
                        </div>
                    </a>
                    <a href="#">
                        <div class="col-md-3 col-sm-3 col-xs-6">
                            <div class="dashboard-div-wrapper bk-clr-four" style="background-color: #D9534F">
                                <i  class="fa fa-bell-o dashboard-div-icon" ></i>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                    </div>

                                </div>
                                <h5>Simple Text Here </h5>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <script src="assets/js/jquery-1.11.1.js"></script>
        <script src="assets/js/bootstrap.js"></script>
    </body>
</html>

