<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<%@page import="Beans.Menu"%>
<%@page import="Beans.MenuItem"%>
<%@page import="java.util.ArrayList"%>
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../css/style.css" rel="stylesheet" type="text/css"  media="all" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="js/search.js"></script>
    <script srs="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(document).ready(function () {
            $('#searchBtn').click(function (event) {
                alert(test);
                $.ajax({
                    url: 'SearchMenu',
                    type:'POST',
                    data: {
                        userName: $('#searchName').val()
                    },
                    success: function (responseText) {
                        $('#imagediv').text(responseText);
                    }
                });
            });
        });

    </script>
</head>
<style>
    .btn {
        margin-right: 30px;
    }

    .well {
        width: 300px;
        height: 300px;
    }
</style>
<body>
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
            logLink = "../login.jsp?login=nav/menu.jsp";
        } else {
            log = "logout";
            logLink = "../logout.jsp?page=nav/menu.jsp";
        }

        pageContext.setAttribute("log", log);
        pageContext.setAttribute("logLink", logLink);

        //String size1 = "size";
        Menu menu = new Menu();
        menu.setMenu();
        ArrayList<MenuItem> menuArray = menu.getMenu();
        //String size = "size"+menuArray.size();

    %>
    <div class="header">
        <div class="wrap">
            <div class="top-header">
                <div class="logo">
                    <a href="../index.jsp"><img src="../images/logo2.png" title="logo" /></a>
                </div>
                <div class="social-icons">
                    <ul>
                        <li><a href="#"><img src="../images/facebook.png" title="facebook" /></a></li>
                        <li><a href="#"><img src="../images/twitter.png" title="twitter" /></a></li>
                        <li><a href="#"><img src="../images/google.png" title="google pluse" /></a></li>
                    </ul>
                </div>
                <div class="clear"> </div>
            </div>
            <div class="top-nav">
                <div class="top-nav-left">
                    <ul>
                        <li><a href="../index.jsp">Home</a></li>
                        <li class="active"><a href="menu.jsp">Menu</a></li>
                        <li><a href="reservation.jsp">Reservation</a></li>
                        <li><a href="promotion.jsp">Promotion</a></li>
                        <li><a href="reviews.jsp">Reviews</a></li>
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
    <div>
        <div class="content">
            <div><img src="../images/menu.png"></div>
            <!---start-about---->
            <div class="about-us"></div>
            <div class="wrap">
                <div class="about-header"></div>
                <div class="about-info"></div>
                <div class="specials">
                </div>

            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input id="searchName" type="text" class="form-control input-lg" placeholder="Search food items" />
                                <span class="input-group-btn">
                                    <div>
                                        <input  id="searchBtn" class="btn btn-info btn-lg" value="Search" type="button">
                                    </div>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">

                    <div class="row">

                        <div class="col-lg-12">
                            <h1 class="page-header">Our menu</h1>
                        </div>

                        <div id='imagediv'>
                            <%                                int x = menuArray.size();
                                for (int i = 0; i < x; i++) {
                                    String itemDescription = menuArray.get(i).getItemDescription();
                                    String itemName = menuArray.get(i).getItemName();
                                    String imagePath = menuArray.get(i).getItemImagePath();

                                    out.write("<div class='col-lg-3 col-md-4 col-xs-6 thumb'>");
                                    out.write("<h1>" + itemName + "</h1>");
                                    out.write("<p>description</p>");
                                    out.write("<p>price</p>");
                                    out.write("<a class='thumbnail' href='../images/slider1.jpg'>");
                                    out.write("<img class='img-responsive' src='../images/slider1.jpg' alt=''></a>");
                                    out.write("</div>");
                                }
                            %>
                        </div>
                    </div>

                    <hr>
                </div>
            </div>
            <div class="testmonials">
                <div class="wrap">
                    <div class="testmonial-grid">
                        <h3>TESTIMONIALS :</h3>
                        <p>" Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat luctus eros ac placerat. Quisque erat metus, facilisis non felis eu, aliquam hendrrit quam. Donec ut lectus vel dolor adipiscing tincidunt. Ut auctor diam at est iaculis, vitae interdum magna sagittis."</p>
                        <a href="#"> - Lorem ipsum</a>
                    </div>
                </div>
            </div>
        </div> 
</body>
</html>


