<%@page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html>
<title>Access denied</title>
<body>
<h2>Access denied</h2>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Sorry : ${pageContext.request.userPrincipal.name} !
			You do not have the right to access this page. Please <a href="<c:url value='/'/>">Return to Home</a>.
		</h2>

	</c:if>
	<c:if test="${pageContext.request.userPrincipal.name == null}">
		<h2>
			Sorry! You do not have the right to access this page. Please <a href="<c:url value='/'/>">Return to Home</a>.
		</h2>
	</c:if>

</body>
</html>
