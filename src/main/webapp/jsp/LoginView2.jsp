 <%@page import="com.film.house.cinema.util.ServletUtility2"%>
 <%@page import ="com.film.house.cinema.controller.LoginCtl2"%>
 <%@page import="com.film.house.cinema.controller.OTBView2"%>
 <%@page import="com.film.house.cinema.util.DataUtility2"%>
 <%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="Header2.jsp"%>
	<div id="fh5co-contact" class="fh5co-section-gray">
		<div class="container">
			<div class="row">
				<div
					class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
					<h3>Login</h3>
					<b><font color="red"> <%=ServletUtility2.getErrorMessage(request)%></font></b>
					<b><font color="green"> <%=ServletUtility2.getSuccessMessage(request)%>
					</font></b>
				</div>
			</div>

			<form action="<%=OTBView2.LOGIN_CTL%>" method="post">
			
				<jsp:useBean id="bean" class="com.film.house.cinema.bean.UserBean2"
					scope="request"></jsp:useBean>
				<%
					String uri = (String) request.getAttribute("uri");
				%>

				<input type="hidden" name="uri" value="<%=uri%>"> <input
					type="hidden" name="id" value="<%=bean.getId()%>"> <input
					type="hidden" name="createdBy" value="<%=bean.getCreatedBy()%>">
				<input type="hidden" name="modifiedBy"
					value="<%=bean.getModifiedBy()%>"> <input type="hidden"
					name="createdDatetime"
					value="<%=DataUtility2.getTimestamp(bean.getCreatedDatetime())%>">
				<input type="hidden" name="modifiedDatetime"
					value="<%=DataUtility2.getTimestamp(bean.getModifiedDatetime())%>">

				<div class="row animate-box">

					<div class="col-md-6">
						<div class="row">
							<div class="col-md-6">
								<label>Login Id</label>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter Login Id" name="login"
										value="<%=DataUtility2.getStringData(bean.getLogin())%>">
									<font color="red"> <%=ServletUtility2.getErrorMessage("login", request)%></font>
								</div>
							</div>
							<div class="col-md-6">
								<label>Password</label>
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Enter Password" name="password"
										value="<%=DataUtility2.getStringData(bean.getPassword())%>">
									<font color="red"> <%=ServletUtility2.getErrorMessage("password", request)%></font>
								</div>
							</div>


							<div class="col-md-12">
								<div class="form-group">
									<input type="submit" name="operation"
										value="<%=LoginCtl2.OP_SIGN_IN%>" class="btn btn-primary">
									<input type="submit" name="operation"
										value="<%=LoginCtl2.OP_SIGN_UP%>" class="btn btn-primary">
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