<%-- 
    Document   : newPromotion
    Created on : Jan 10, 2017, 11:24:45 AM
    Author     : savinda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new promotion</title>
        <link href="../assets/css/bootstrap.css" rel="stylesheet" />
        <link href="../assets/css/font-awesome.css" rel="stylesheet" />
        <link href="../assets/css/style.css" rel="stylesheet" />
    </head>
    <body>
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
                                <form>
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email" />
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" />
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputFile">File input</label>
                                        <input type="file" id="exampleInputFile" />
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