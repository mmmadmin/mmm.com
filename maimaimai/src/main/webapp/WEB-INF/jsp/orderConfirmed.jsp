<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home - maimaimai.com</title>
<link rel="stylesheet" href="<c:url value="/css/cotd_v2_50db8ea.css"/>" />
</head>
<body>
	<h1>
		<td width="100%"><b>&nbsp;Current Date and time is:&nbsp; <font
				color="#FF0000"> <%=new java.util.Date()%>
			</font></b></td>
	</h1>
	<h1>Order Confirmed</h1>
	<a href="${flowExecutionUrl}&_eventId=returnToIndex">Return to index</a>
</body>
</html>