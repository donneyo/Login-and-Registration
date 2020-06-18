<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.film.house.cinema.controller.OTBView2"%>
 <%@page import="com.film.house.cinema.controller.LoginCtl2"%>
  <%@page import="com.film.house.cinema.controller.UserRegistrationCtl2"%>
 <%@page import="com.film.house.cinema.bean.UserBean2"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="/filmHouseCinema/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/filmHouseCinema/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/filmHouseCinema/css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="/filmHouseCinema/css/superfish.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="/filmHouseCinema/css/magnific-popup.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="/filmHouseCinema/css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="/filmHouseCinema/css/cs-select.css">
	<link rel="stylesheet" href="/filmHouseCinema/css/cs-skin-border.css">
	
	<link rel="stylesheet" href="/filmHouseCinema/css/style.css">
</head>	
<body>

<%
    UserBean2 userBean = (UserBean2) session.getAttribute("user");

    boolean userLoggedIn = userBean != null;

    String welcomeMsg = "Hi, ";

    if (userLoggedIn) {
        String role = (String) session.getAttribute("role");
        welcomeMsg += userBean.getFirstName() + " (" + role + ")";
    } else {
        welcomeMsg += "Guest";
    }

%>

	<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<img src="<%= request.getContextPath() %>/images/filmhousepix.png" id="fh5co-logo">
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li class="active"><a href="<!-- servlet code here  -->">Home</a></li>
				
							<%if(userLoggedIn){ %>
							
							<%if(userBean.getRoleId()==1){%>
							<li><a href="<%=OTBView2.MOVIE_CTL%>">Add Movie</a></li>
							<li><a href="<%=OTBView2.MOVIE_LIST_CTL%>">Movies</a></li>
							<li><a href="<%=OTBView2.BOOK_LIST_CTL%>">Book List</a></li>
							
							<%}else if(userBean.getRoleId()==2){ %>
							
							<li><a href="<%=OTBView2.MOVIE_LIST_CTL%>">Movie List</a></li>
							<li><a href="<%=OTBView2.BOOK_LIST_CTL%>">Book List</a></li>
							
							<%} %>
							
							
							
							<li>
								<a href="" class="fh5co-sub-ddown"><%=welcomeMsg%></a>
								<ul class="fh5co-sub-menu">
									<li><a href="<%=OTBView2.MY_PROFILE_CTL%>">My Profile</a></li>
									<li><a href="<%=OTBView2.CHANGE_PASSWORD_CTL%>">Change Password</a></li>
									<li><a href="<%=OTBView2.LOGIN_CTL%>?operation=<%=LoginCtl2.OP_LOG_OUT%>">LogOut</a></li>
									
								</ul>
							</li>
								<%}else{ %>
							<li><a href="<%=OTBView2.LOGIN_CTL%>">Sign In</a></li>
							<li><a href="<%=OTBView2.USER_REGISTRATION_CTL%>">Sign Up</a></li>
							<li><a href=""><%=welcomeMsg%></a></li>
								<%} %>
							</ul>
					</nav>
				</div>
			</div>
		</header>

</body>

</html>