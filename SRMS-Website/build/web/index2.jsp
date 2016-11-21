<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Maharajah palace </title>
        <link rel="stylesheet" href="css/stylesheet.css" type="text/css">
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD3t29iZ2vzqYXJA1tz8vguzAusKwpYRtM"></script>
        <script src="js/map.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Tangerine" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Architects+Daughter" rel="stylesheet">
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
                logLink ="login.jsp?login=index.jsp";
            }
            else{
                log = "logout";
                logLink = "logout.jsp?page=index.jsp";
            }
            
            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);
            
        %>
        <c:out value="log"/>
        <c:out value="logLink"/>
        <div>
            <div class="navbar">
                <a href="index.html"><img class="logo" src="img/logo1.png" width="20%" ></a> 
                <div class="nav"> 
                    <ul>
                        <li><a href="nav/menu.jsp">Menu</a> </li>
                        <li><a href="nav/res.jsp">Reservation</a> </li>
                        <li><a href="nav/reviews.jsp">Reviews</a> </li>
                        <li><a href="nav/promot.jsp">Promotion</a> </li>
                        <li><a href="${logLink}">${log}</a> </li>      
                    </ul>
                </div>
            </div>
        </div>
        <!--Home section-->
    <section id="home">
        <div class="home-content">
            <div>
            <p class="text-align">An authentic Indian Restaurant <br>
            situated in the heart of Colombo city <br>
            which serves a vast array of North Indian dishes.</p>
            </div>
        </div>
        </section>
        <section>
            <div class="section1">
                  <table class="table">
                      <tr>
                          <td class="td1" colspan="4"><h3> About Us</h3> 
                              <p class="para">  
                          Maharaja Palace is one of the few fine dining Indian restaurants in Colombo. 
                          The restaurant is designed in a way capturing the essence of the Indian culture.A dinner at the Maharaja Palace is not just about eating out. 
                            It’s more like a journey through the culinary traditions of a great era. Visit us and feel the romance of Maharaja Palace. 
                            </p>
                            <h3>Opening Hours</h3>
                            <p class="para">
                            Lunch from 12pm to 3pm<br>
                            Dinner from 6pm to 12am<br> 
							(7 Days per week)
							</p>
                          </td>
                          <td class="td2"></td>
                          <td class="td3" colspan="4" rowspan="6">
                          <h3>Our Location </h3>
                          
                          <div id="googleMap" style="width:500px;height:400px;"></div>
                          </td>
                      </tr>
                      <tr>
                      <td class="td1" colspan="4">
                        <h3>Contact Us</h3>
                    <p class="para">
                        The Maharaja Palace<br>
                        1A,Rajakeeya Mawatha,Colombo-07.<br>
                        <br>
                        Telephone:011 4 886000<br>
                        Email:maharajapalacecolombo@gmail.com<br>
                    </p>
                       </td>
                        
                    </tr>
                </table>
        </section>
    </body>
</html>
