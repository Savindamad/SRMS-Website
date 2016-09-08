<%-- 
    Document   : index
    Created on : Sep 7, 2016, 3:12:19 PM
    Author     : Savinda Keshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Maharajah palace </title>
        <link rel="stylesheet" href="css/stylesheet.css" type="text/css">
        <script src="http://maps.googleapis.com/maps/api/js"></script>
        <script src="js/map.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Fanwood+Text" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montez" rel="stylesheet">
    </head>
    <body>
        <div>
            <div class="navbar">
              <a href="index.html"><img class="logo" src="img/logo1.png" width="20%" ></a> 
                 <div class="nav"> 
                     <ul>
                      <li><a href="nav/menu.html">Men</a> </li>
                      <li><a href="nav/res.html">Reservation</a> </li>
                      <li><a href="nav/reviews.html">Reviews</a> </li>
                      <li><a href="nav/promot.html">Promotion</a> </li>
                      <li><a class="login" href="login/login.jsp">Login</a></li>      
                    </ul>
                </div>
              </div>
          </div>
        <!--Home section-->
    <section id="home">
        <div class="home-content">
            <div>
            <p class="text-align">An authentic Indian Restaurant <br>
             with a vast array of North Indian dishes</p>
            </div>
        </div>
        </section>
        <section>
            <div class="content">
                  <table class="table">
                      <tr>
                          <td class="td1" colspan="4"><h3> About Us</h3> 
                              <p class="para">  
                          Maharaja Palace is one of the few fine dining Indian restaurants in Colombo. 
                          The restaurant is designed in a way capturing the essence of the Indian culture.A dinner at the Maharaja Palace is not just about eating out. 
                            It’s more like a journey through the culinary traditions of a great era. Visit us and feel the romance of Maharaja Palace.  
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
                        <h3>Contact Info</h3>
                    <p class="para">
                        The Maharaja place<br>
                        1A,Rajakeeya Mawatha,Colombo-07<br>
                        <br>
                        Telephone:011 4 886000<br>
                        Email:maharajaplacecolombo@gmail.com<br>
                    </p>
                       </td>
                    </tr>
                </table>
        </section>
    </body>
</html>
