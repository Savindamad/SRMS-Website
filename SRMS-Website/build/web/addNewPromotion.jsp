<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new promotion</title>
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
        <div class="content-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Forms </h1>
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
                                        <input type="text" class="form-control" id="title" name="title" placeholder="Promotion title" />
                                    </div>
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <input type="text" class="form-control" id="description" name="description" placeholder="Promotion description" />
                                    </div>
                                    <div class="form-group">
                                        <label for="file">File input</label>
                                        <input type="file" id="file" name="file" />
                                    </div>
                                    <button type="submit" class="btn btn-default">Submit</button>
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
