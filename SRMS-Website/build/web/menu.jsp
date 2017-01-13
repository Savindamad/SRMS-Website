<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<%@page import="Beans.Menu"%>
<%@page import="Beans.MenuItem"%>
<%@page import="java.util.ArrayList"%>
<head>
    <title>Menu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="js/search.js"></script>
    <script srs="http://code.jquery.com/jquery-latest.js"></script>
    <script>
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
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/searchMenu.js" type="text/javascript"></script>
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
            logLink = "login.jsp?login=menu.jsp";
        } else {
            log = "logout";
            logLink = "logout.jsp?page=menu.jsp";
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
                    <a href="index.jsp"><img src="images/logo2.png" title="logo" /></a>
                </div>
                <div class="social-icons">
                    <ul>
                        <li><a href="https://www.facebook.com/pages/Maharaja-Palace-Colombo-7/102829946533873?nr"><img src="images/facebook.png" title="facebook" /></a></li>
                        <li><a href="#"><img src="images/twitter.png" title="twitter" /></a></li>
                        <li><a href="#"><img src="images/google.png" title="google pluse" /></a></li>
                    </ul>
                </div>
                <div class="clear"> </div>
            </div>
            <div class="top-nav">
                <div class="top-nav-left">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
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
            <div><img src="images/menu.png"></div>
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

                        <div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div id='imagediv'>
                                            <%                                int x = menuArray.size();
                                                for (int i = 0; i < x; i++) {
                                                    String itemDescription = menuArray.get(i).getItemDescription();
                                                    String itemName = menuArray.get(i).getItemName();
                                                    String imagePath = menuArray.get(i).getItemImagePath();
                                                    String itemPrice = menuArray.get(i).getItemPrice();
                                                    String itemType = menuArray.get(i).getItemType();
                                            %>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="col-md-3">
                                                        <div class="thumbnail">
                                                            <img alt="Bootstrap Thumbnail First" src="<% out.print(imagePath); %>" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-7">
                                                        <div class="thumbnail">
                                                            <div class="caption">
                                                                <h3>Name : <% out.print(itemName); %></h3>
                                                                <p>Price : <% out.print(itemPrice); %></p>
                                                                <p>category : <% out.print(itemType); %></p>
                                                                <p>Description : <% out.print(itemDescription); %></p>
                                                            </div>
                                                        </div>
                                                    </div>                                                    
                                                </div>
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

                    <hr>
                </div>
            </div>
        </div> 
         <div class="footer">
            <div class="wrap">
                <div class="footer-grid">
                    <h3></h3>
                </div>
                <div class="footer-grid center-grid">
                    <h3></h3>
                    <ul>

                    </ul>
                </div>
                <div class="footer-grid"></div>
                <div class="clear"> </div>
            </div>
            <div class="clear"> </div>
        </div>
        <div class="copy-right">
            <div class="top-to-page">
                <a href="#top" class="scroll"></a>
                <div class="clear"></div>
            </div>	
        </div>                                
</body>
</html>


