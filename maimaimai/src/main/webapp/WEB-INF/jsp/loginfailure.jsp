<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% response.setHeader("Refresh", "10;url=login"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Login</title>
<link rel="stylesheet"
	href="https://s3-ap-southeast-2.amazonaws.com/static.catchoftheday.com.au/cssjs/version-v378/css/cotd_v2_50db8ea.css">
</head>
<body>
	<h1>
		<td width="100%"><b>&nbsp;Current Date and time is:&nbsp; <font
				color="#FF0000"> <%=new java.util.Date()%>
			</font></b></td>
	</h1>
		<h3>Login Failed due to: ${message}</h3>
		<br>
		You will be redirected to the login page after 10 seconds.
		<br> <br> <br>
		<a color="#FF0088" href="/login">Use this link to redirect now</a>
</body>
</html>