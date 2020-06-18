<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.film.house.cinema.util.ServletUtility2"%>
 <%@page import="com.film.house.cinema.controller.OTBView2"%>
 <%@page import="com.film.house.cinema.util.DataUtility2"%>
 <%@page import="com.film.house.cinema.util.DataUtility2"%>
 <%@page import="com.film.house.cinema.controller.UserRegistrationCtl2"%>
  <%@page import="com.film.house.cinema.controller.BaseCtl2"%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
</head>
<body>
<%@ include file="Header2.jsp" %>

<div id="fh5co-contact" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>User Registration</h3>
						<b><font color="red"> <%=ServletUtility2.getErrorMessage(request)%></font></b>
						<b><font color="green"> <%=ServletUtility2.getSuccessMessage(request)%>
						</font></b>
					</div>
			
			</div>
				
				<form action="<%=OTBView2.USER_REGISTRATION_CTL%>" method="post">
				
				<jsp:useBean id="bean" class="com.film.house.cinema.bean.UserBean2"
			scope="request"></jsp:useBean>
			
			<input type="hidden" name="id" value="<%=bean.getId()%>"> <input
				type="hidden" name="createdBy" value="<%=bean.getCreatedBy()%>">
			<input type="hidden" name="modifiedBy" value="<%=bean.getModifiedBy()%>">
			 <input type="hidden" name="createdDatetime" value="<%=DataUtility2.getTimestamp(bean.getCreatedDatetime())%>">
			<input type="hidden" name="modifiedDatetime" value="<%=DataUtility2.getTimestamp(bean.getModifiedDatetime())%>">
				
					<div class="row animate-box">
					
						<div class="col-md-6">
							<div class="row">
							<div class="col-md-6">
								<label>First Name</label>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Enter First Name"
										name="firstName" value="<%=DataUtility2.getStringData(bean.getFirstName())%>">
										<font color="red"> <%=ServletUtility2.getErrorMessage("firstName", request)%></font>
									</div>
								</div>
								<div class="col-md-6">
								<label>Last Name</label>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Enter Last Name"
										name="lastName" value="<%=DataUtility2.getStringData(bean.getLastName())%>">
										<font color="red"> <%=ServletUtility2.getErrorMessage("lastName", request)%></font>
									</div>
								</div>
								
								<div class="col-md-12">
								<label>Login</label>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Enter Login Id"
										name="login" value="<%=DataUtility2.getStringData(bean.getLogin())%>">
										<font color="red"> <%=ServletUtility2.getErrorMessage("login", request)%></font>
									</div>
								</div>
								
					
							<div class="col-md-6">
								<label>Password</label>
									<div class="form-group">
										<input type="password" class="form-control" placeholder="Enter Password"
										name="password" value="<%=DataUtility2.getStringData(bean.getPassword())%>">
										<font color="red"> <%=ServletUtility2.getErrorMessage("password", request)%></font>
									</div>
								</div>
								<div class="col-md-6">
								<label>Confirm Password</label>
									<div class="form-group">
										<input type="password" class="form-control" placeholder="Confirm Password"
										name="confirmPassword" value="<%=DataUtility2.getStringData(bean.getConfirmPassword())%>">
										<font color="red"> <%=ServletUtility2.getErrorMessage("confirmPassword", request)%></font>
									</div>
								</div>
						
								
								<div class="col-md-12">
								<label>Mobile</label>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Enter Mobile No"
										name="mobile" value="<%=DataUtility2.getStringData(bean.getMobileNo())%>">
										<font color="red"> <%=ServletUtility2.getErrorMessage("mobile", request)%></font>
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="form-group">
										<input type="submit" name="operation" value="<%=UserRegistrationCtl2.OP_SIGN_UP%>" class="btn btn-primary">
										<input type="submit" name="operation" value="<%=UserRegistrationCtl2.OP_RESET%>" class="btn btn-primary">
									</div>
								</div>
							</div>
						</div>
					</div>					
				</form>
	</div>
	</div>

<%@ include file="Footer2.jsp"%>
</body>
</html>