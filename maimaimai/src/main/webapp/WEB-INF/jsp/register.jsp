<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Registration</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cotd_v2_50db8ea.css">
</head>
<body>
	<h1>
		<td width="100%"><b>&nbsp;Current Date and time is:&nbsp; <font
				color="#FF0000"> <%=new java.util.Date()%>
			</font></b></td>${pageContext.request.contextPath}/j_spring_security_check
	</h1>
	<div id="login-container" class="login-box clearfix">
		<h3>User Registration Form</h3>

		<form:form action="/register/new" id="form-login" modelAttribute="user"
			class="form-login" method="post">
			<div class="input-container">
				<form:label path="username" for="login_email" class="required">Email Address as Username</form:label>
				<form:input path="username" type="text" id="login_email"
					name="login[email]" required="required"
					placeholder="Email Address as Username" class="input-control"
					autofocus="autofocus" />
			</div>
			<div class="input-container">
				<form:label path="password" for="login_password" class="required">Password</form:label>
				<form:input path="password" type="password" id="login_password"
					name="login[password]" required="required" placeholder="Password"
					class="input-control" />
			</div>
			<div class="input-container">
				<form:label path="fullname" for="address_billing" class="required">Billing Address</form:label>
				<form:input path="fullname" type="textfield" id="address_billing"
					name="address[billing]" required="required" placeholder="Billing Address"
					class="input-control" />
			</div>
				<p class="submit pull-right button-controller">
					<input type="hidden" id="login__token" name="login[_token]"
						value="kB-nkl7u_bPbse7k85nmoo1eR7ZeU1E1iIYrm8Zkasg">
					<button class="btn success pull-right" id="button-login"
						data-loading="button">Sign Up</button>
				</p>
			</div>
		</form:form>

	</div>
</body>
</html>