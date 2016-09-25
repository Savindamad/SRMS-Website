<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Maharajah palace </title>
        <link rel="stylesheet" href="../css/stylesheet.css" type="text/css">
        <script src="../js/slides.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Tangerine" rel="stylesheet">

    </head>
<body>
    <body>
        <%  
            HttpSession sessionUser=request.getSession(false);  
            String email=(String)sessionUser.getAttribute("email");
            
            User user1 = new User();
            user1.setEmail(email);
            user1.getUser();
            String log;
            String logLink;
            String name = user1.getName();
            if(name==""){
                log = "login";
                logLink ="../login.jsp?login=nav/menu.jsp";
            }
            else{
                log = "logout";
                logLink ="../logout.jsp?page=nav/menu.jsp";
            }
            
            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);
            
        %>
        <c:out value="log"/>
        <c:out value="logLink"/>
        <div>
            <div class="navbar">
                <a href="../index.jsp"><img class="logo" src="../img/logo1.png" width="20%"></a> 
                <div class="nav"> 
                    <ul>
                        <li><a href="menu.jsp">Menu</a> </li>
                        <li><a href="res.jsp">Reservation</a> </li>
                        <li><a href="reviews.jsp">Reviews</a> </li>
                        <li><a href="promot.jsp">Promotion</a> </li>
                        <li><a href="${logLink}">${log}</a> </li>      
                    </ul>
                </div>
            </div>
        </div>
    <section id="menu">
                <div class="content">
                    <p class="p1">Feel the real taste of Indian cuisine,<br>
                    <ul class="menuli">
                        <li>Soups</li>
                        <li>Salads</li> 
                        <li>Vegetarian meals</li>
                        <li>Non-Vegetarian meals</li>
                        <li>Rice Preparations</li> 
                        <li>Desserts</li> 
                        <li>with the impressive wine collection.</li>
                        </ul>
                    </div>
        </section>
                <section>
                    <h3 class="title"> Menu </h3>
                    <div class="slideshow-content">
                        <div class="mySlides fade">
                        <img src="../img/page1.png" width="100%" height="100%">
                        </div>
                        
                        <div class="mySlides fade">
                            <img src="../img/page2.png" width="100%" >
                        </div>
                        
                        <div class="mySlides fade">
                            <img src="../img/page2.png" width="100%" height="100%" >
                        </div>
                        
                        <a class="prev" onclick="plusSlides(-1)"> &#10094; </a>
                        <a class="nxt" onclick="plusSlides(1)">&#10095; </a>
                    </div>
                    <br>
                    
                        <div style="text-align:center">
                            <span class="dot" onclick="currentSlide(1)">  </span>
                            <span class="dot" onclick="currentSlide(2)">  </span>
                            <span class="dot" onclick="currentSlide(3)">  </span>
                        </div>
                </section>
    
    </body>

</html>