<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Maharajah palace </title>
        <link rel="stylesheet" href="../css/stylesheet.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Tangerine" rel="stylesheet">
        
    </head>
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
                logLink ="../login.jsp?login=nav/promot.jsp";
            }
            else{
                log = "logout";
                logLink ="../logout.jsp?page=nav/promot.jsp";
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
        <section id="promo">
            <div class="content">
                <p class="p4">
                    Celebrate your life events with your loved ones at Maharaja Palace.<br>
                    We are happy to make your day extra special.

                </p>
            </div>
        </section>
            <section>
                <div class="content">
                    
                </div>
        </section>
    </body>
</html>
