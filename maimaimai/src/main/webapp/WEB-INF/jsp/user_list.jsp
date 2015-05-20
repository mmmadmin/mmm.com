<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Hello World</title>
<link rel="stylesheet" href="<c:url value="/css/cotd_v2_50db8ea.css"/>" />
</head>
<body>
	<h1>
		<b>&nbsp;Current Date and time is:&nbsp; <font color="#FF5500">
				<%=new java.util.Date()%>
		</font></b>user_list.jsp
	</h1>
	<h2>
		All users found:
		<c:if test="${not empty lists}">
			<table>
				<th>Full Name</th>
				<th>Username</th>
				<th>sysID</th>
				<c:forEach var="user" items="${lists}">
					<tr>
						<td>${user.fullname}</td>
						<td>${user.username}</td>
						<td>${user.sys_id}</td>
					</tr>
				</c:forEach>

			</table>
		</c:if>
	</h2>
	<p>
		Your principal object is....:
		<%=request.getUserPrincipal()%>
	</p>
</body>
</html>