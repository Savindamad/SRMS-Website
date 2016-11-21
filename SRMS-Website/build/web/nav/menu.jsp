<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Beans.User"%>
<head>
  <title>Menu</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="../css/style.css" rel="stylesheet" type="text/css"  media="all" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
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
                logLink ="../login.jsp?login=nav/menu.jsp";
            }
            else{
                log = "logout";
                logLink ="../logout.jsp?page=nav/menu.jsp";
            }
            
            pageContext.setAttribute("log", log);
            pageContext.setAttribute("logLink", logLink);
            
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
                        <li><a href="${logLink}">${log}</a> </li>
                    </div>
                    <div class="clear"> </div>
		</div>
            </div>
	</div>
	<div class="content">
            <div><img src="../images/menu.png"></div>
		 	<!---start-about---->
            <div class="about-us">
            <div class="wrap">
		<div class="about-header"></div>
		<div class="about-info"></div>
                <div class="specials">
		<div class="specials-heading">
                    <h3>Our Special</h3>
                    <div class="clear"> </div>
		</div>
                <div class="clear"> </div>
		<div class="specials-grids">
		<div class="special-grid">
                    <img src="../images/slider2.jpg" title="image-name">
                    <a href="#">Lorem ipsum dolor</a>
                    <p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
		</div>
		<div class="special-grid">
                    <img src="../images/slider1.jpg" title="image-name">
                    <a href="#">volutpat luctus</a>
                    <p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
		</div>
		<div class="special-grid spe-grid">
                    <img src="../images/slider4.jpg" title="image-name">
                    <a href="#">Quisque erat metus</a>
                    <p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
		</div>
                <div class="special-grid">
                    <img src="../images/slider1.jpg" title="image-name">
                    <a href="#">volutpat luctus</a>
                    <p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
		</div>
                    <div class="special-grid">
			<img src="../images/slider1.jpg" title="image-name">
			<a href="#">volutpat luctus</a>
			<p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
                    </div>
                <div class="special-grid spe-grid">
                    <img src="../images/slider4.jpg" title="image-name">
                    <a href="#">Quisque erat metus</a>
                    <p>Lorem ipsum dolor sit amet consectetur adiing elit. In volutpat luctus eros ac placerat. Quisque erat metus facilisis non feu,aliquam hendrerit quam. Donec ut lectus vel dolor adipiscing tincnt.</p>
		</div>
		<div class="clear"> </div>
                </div>
		<div class="clear"> </div>
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
        </div>
    </body>
</html>


