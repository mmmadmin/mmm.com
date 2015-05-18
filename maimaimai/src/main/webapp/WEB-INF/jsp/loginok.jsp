<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Hello World</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cotd_v2_50db8ea.css">

</head>
<body>
	<h1>
		<td width="100%"><b>&nbsp;Current Date and time is:&nbsp; <font
				color="#FF5500"> <%=new java.util.Date()%>
			</font></b></td>
	</h1>
	<h2><table>
    <tr>
        <td>Name</td>
        <td>: ${fname}</td>
    </tr>
    <tr>
        <td>Username</td>
        <td>: ${username}</td>
    </tr>
    <tr>
        <td>Password</td>
        <td>: ${password}</td>
    </tr>
</table></h2>
<p><a href="${pageContext.request.contextPath}/j_spring_security_logout">Logout</a>
</body>
</html>