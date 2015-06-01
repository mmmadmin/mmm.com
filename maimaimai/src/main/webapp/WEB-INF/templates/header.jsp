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
			href="javascript:formSubmit()"> Logout</a> | <a href="shopping">View
			Cart</a>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null}">
	<p class="pull-right">
		<a HREF="<c:url value="login"/>">Login</a>
	</p>
</c:if>
TEST |
<a href="shopping">View Cart</a>
<small>▼</small>
<div class="menu-dropdown">
	<ul>
		<li><a href="#">Home</a></li>
		<li><a href="#" id="current">Fruit</a>
			<ul>
				<li><a href="#">Apples</a></li>
				<li><a href="#">Oranges</a></li>
				<li><a href="#">Bananas</a></li>
				<li><a href="#">Pears</a></li>
			</ul></li>
		<li><a href="/about.html">About</a>
			<ul>
				<li><a href="#">Company Info</a></li>
				<li><a href="#">Locations</a></li>
				<li><a href="#">FAQ</a></li>
			</ul></li>
		<li><a href="/contact/contact.php">Contact Us</a></li>
	</ul>
</div>
