<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<html>
    <head>
        <title>reviews</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    </head>
    <style>
        .btn {
            margin-right: 30px;
        }
        .ifg {
            margin-top: 50px;
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
                logLink = "login.jsp?login=reviews.jsp";
            } else {
                log = "logout";
                logLink = "logout.jsp?page=reviews.jsp";
            }

            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);

        %>
        <div class="header">
            <div class="wrap">
                <div class="top-header">
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo2.png" title="logo" /></a>
                    </div>
                    <div class="social-icons">
                        <ul>
                            <li><a href="#"><img src="images/facebook.png" title="facebook" /></a></li>
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
                            <li><a href="menu.jsp">Menu</a></li>
                            <li><a href="reservation.jsp">Reservation</a></li>
                            <li><a href="promotion.jsp">Promotion</a></li>
                            <li class="active"><a href="reviews.jsp">Reviews</a></li>
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
        <div class="content">
            <div><img src="images/reviews.png"></div>
            <div class="contact">
                <div class="wrap">		
                </div>
            </div>
        </div>
        <div class="container-fluid" style="margin-top : 80px">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-12" >
                                    <div class="tabbable" id="tabs-909797">
                                        <ul class="nav nav-tabs">
                                            <li>
                                                <a href="#panel-700466" data-toggle="tab">Articles</a>
                                            </li>
                                            <li class="active">
                                                <a href="#panel-521644" data-toggle="tab">Reviews</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane" id="panel-700466">
                                                <div class="col-md-12" style="margin-top : 40px">
                                                    <div class="thumbnail">
                                                        <div class="caption">
                                                            <h3>Maharaja Palace</h3>
                                                            <p>Maharaja Palace opened its doors with true Indian royalty, style and glamour offering authentic 
                                                                North Indian cuisine for those with impeccable taste.
                                                                Situated on Rajakeeya Mawatha, Colombo 7, Maharaja Palace provides a truly royal experience.
                                                                The gala three day opening of Maharaja Palace,which was held on 10, 11 and 12 July was exuberantly 
                                                                rich and gave an insight as to what this unique restaurant has to offer.  
                                                                The brilliant white mansion stood amazingly against the night sky while the colours of the 
                                                                lights created a soothing atmosphere. Two regally decorated white horses gave an impression of 
                                                                a Maharaja’s Palace and the brightly lit flame torches enhanced the ambience.

                                                                As the magnificent mahogany doors opened, the fragrance of the flowers promised a magical evening. 
                                                                Beautifully attired girls greeted the guests while presenting shawls to the gentlemen and giving bindhis to the ladies. 
                                                                The warm sounds of the bangara drummers as the guests entered gave a red carpet welcome to each and every guest in true 
                                                                Maharaja Palace style. The distinguished invitees that were dressed glamorously colourful were Maharajas and 
                                                                Maharanis themselves and represented the creme of society.
                                                                The golden chandeliers with the light reflecting on the pristine white walls created a unique ambience that was enhanced by the conscientiously selected traditional Indian furniture. 
                                                                The murals reflecting Moghul art created the distinct impression of walking into a Maharaja’s Palace. The main dining room downstairs has a capacity for 75 guests, 
                                                                while there are five private dining rooms upstairs. 
                                                                Each private room has its own theme where colours vary from gold, burgundy, orange, green to blue creating an elegant but comfortable space. 
                                                                Four of the private dining rooms can accommodate seven to eight guests while the fifth, which is the largest private dining room can accommodate up to 16 persons.
                                                                <br>
                                                                <br>
                                                                This larger room can also be separated into two compartments according to the requirement. 
                                                                The lounge upstairs provides a space for those who wish to relax while they wait for their tables.
                                                                While the authentic North Indian cuisine takes prime place, Maharaja Palace also has a bar overlooking a water feature, 
                                                                where various types of beverages are available to the guests.The rich aromas of the cuisine floated in the air, the show kitchen comes 
                                                                under the experienced direction of Executive Chef M. Abubakar who has been with the renowned Intercontinental chain for over 20 years. 
                                                                The food prepared at the Maharaja Palace, is prepared by trained Indian chefs thereby ensuring an authentic Indian
                                                                <br>
                                                                <br>
                                                                experience. Nothing is left to be desired with the vast array of delectable North Indian dishes that reflect the Moghul tradition. 
                                                                Prepared using ingredients especially brought down from India, the menu consists of rich, creamy and spicy dishes. 
                                                                Starters were served with drinks while the main buffet consisted of fragrant biryani, succulent chicken tikka masala, 
                                                                mutton, fish, vegetarian dishes, salads appetizers and sweets. This was a gastronomical adventure for the diners.
                                                                The food at Maharaja Palace is prepared using products from Halal certified suppliers. Furthermore, the food has no 
                                                                MSG added and does not contain any artificial flavouring. During dinner elegantly attired girls presented bangles to the ladies.
                                                                The beautiful dancers and soothing oriental music heightened the experience, while mehendi artistes created intricate 
                                                                designs thereby contributing to the overall evening.</p>
                                                        </div>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="tab-pane active" id="panel-521644">
                                                <div class="row" style="margin-top : 40px">
                                                    <div class="col-md-1"></div>
                                                    <div class="col-md-9">
                                                        <div class="form-group">
                                                            <textarea class="form-control" placeholder="Message"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <button class="btn btn-lg btn-primary">Post</button>
                                                    </div>  
                                                </div>
                                                <div style="margin-top : 30px">
                                                    <div class="row">
                                                        <div class="col-md-1"></div>
                                                        <div class="col-md-10">
                                                            <div class="media">
                                                                <a href="#" class="pull-left"><img alt="Bootstrap Media Preview" src="http://lorempixel.com/64/64/" class="media-object" /></a>
                                                                <div class="media-body">
                                                                    <h4 class="media-heading">Name</h4>
                                                                    <p>Comment</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>


