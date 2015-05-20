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
	<h1>View Cart</h1>
	<h2>Items in Your Cart</h2>
	<c:choose>
		<c:when test="${empty cart.items}">
			<p>Your cart is empty.</p>
		</c:when>
		<c:otherwise>
			<table border="1" cellspacing="0">
				<tr>
					<th>Item</th>
					<th>Quantity</th>
					<th>Unit Price</th>
					<th>Total</th>
				</tr>

				<c:forEach var="item" items="${cart.items}">
					<tr>
						<td>${item.product.description}</td>
						<td>${item.quantity}</td>
						<td>${item.product.price}</td>
						<td>${item.totalPrice}</td>
					</tr>
				</c:forEach>

				<tr>
					<td>TOTAL:</td>
					<td></td>
					<td></td>
					<td>${cart.totalPrice}</td>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>

	<a href="${flowExecutionUrl}&_eventId=submit">Submit</a>
	<h2>Products for Your Choice</h2>

	<table>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.description}</td>
				<td>${product.price}</td>


				<td><a
					href="${flowExecutionUrl}&_eventId=addToCart&productId=${product.id}">[add
						to cart]</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>