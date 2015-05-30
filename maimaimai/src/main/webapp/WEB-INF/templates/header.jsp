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
	<p class="pull-right">
		Welcome : ${pageContext.request.userPrincipal.name} | <a
			href="javascript:formSubmit()"> Logout</a> | <a href="shopping" type="popup">View
			Cart</a>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null}">
	<p>
		<a HREF="<c:url value="login"/>">Login</a>
	</p>
</c:if>