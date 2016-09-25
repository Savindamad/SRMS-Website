<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<!DOCTYPE html>
<htm>
    <head>
        <title> Maharajah palace </title>
        <link rel="stylesheet" href="../css/stylesheet.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Tangerine" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet">

    </head>

    <body>
        <script src="js/validate.js"></script>
        <%
            HttpSession sessionUser = request.getSession(false);
            String email = (String) sessionUser.getAttribute("email");

            User user1 = new User();
            user1.setEmail(email);
            user1.getUser();
            String log;
            
            String logLink;
            String name = user1.getName();
            String selectPath;
            if (name == "") {
                log = "login";
                logLink = "../login.jsp?login=nav/res.jsp";
                selectPath = "../ReDirectPage";
                
            } else {
                log = "logout";
                logLink = "../logout.jsp?page=nav/res.jsp";
                selectPath = "Reservation";
                
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
    <section id="res">
        <div class="res-content">
            <P class="p3">
                The ideal place for a romantic dinner. Maharaja palace offers special private
                dinning areas with a royal ambience.
            </P>

        </div>
    </section>
    <section>
        <div class="content">
            <div class="header">
                <h1 class="title">Reservations</h1><br>
                <p class="res">Feel the marvel of Maharaja Palace</p>
            </div>
            <div class="side-bar">
                <form class="form" action="<%=selectPath%>" method="post" onsubmit="return validateReservationForm();">
                    <input class="l1 l2" type="date" name="res_date" placeholder="Select Date" required="select date" >
                    <br>
                    <br>
                    <Select class="l1" name="table_types" placeholder="Select Date" required="Select table type">
                        <option value="tres">Table reservation</option>
                        <option value="tres">Private Dining</option>
                    </Select>
                    <br>
                    <br>
                    <input class="l1" type="number" name="num_of_persons" placeholder="No of Persons"  min="1" max="20" required="Select number of persons">
                    <br>
                    <br>
                    <input class="l1 l3" type="submit" value="Proceed the Reservation">
                </form>
            </div>
            <div class="main">
                <h4 class="terms"> Terms and Conditions </h4>
                <br>
                <p class="p">
                    We are committed to protect the privacy of personal information you may provide us on this Website.<br>
                    All the prices are mentioned in Sri Lankan Rupees (SLR) and you will be charged based on the prevailing exchange rate.<br>
                    When reseerving tables an advance payment should paid as per customers.<br>
                    Reservation can be cancelled defore 24 hours.<br> 
                    Advance payments can be refundable for early cancellations only.<br>
                    For late cancellations a fine will be charged.<br>

                </p>

            </div>
            <div class="footer">
                <h1> footer </h1>
            </div>
        </div>
    </section>
</body>
</html>
