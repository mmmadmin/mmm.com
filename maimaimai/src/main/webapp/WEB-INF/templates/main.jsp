<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
<head>
<title><tiles:getAsString name="title" /></title>
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>" /> --%>
<link rel="stylesheet" href="<c:url value="/css/cotd_v2_50db8ea.css"/>" />
</head>
<body>
	<div id="main">
		<div id="header" class="floatingHeader">
			<div id="headerTitle">
				<tiles:insertAttribute name="header" />
			</div>
		</div>
		<div id="menu-corner">
			<tiles:insertAttribute name="menu" />
		</div>
		<div id="content">
			<td><tiles:insertAttribute name="body" />
		</div>
		<div class="footer_placeholder"></div>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>