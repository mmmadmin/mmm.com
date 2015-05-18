<%@ include file="/WEB-INF/jsp/include.jsp"%>
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
			Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout</a>
		<p><a href="shopping">View Cart</a>
	</c:if>
	<c:if test="${pageContext.request.userPrincipal.name == null}">
		<p>Get started by clicking "Login"...</p>
		<p><a HREF="<c:url value="login"/>">Login</a></p>
	</c:if>