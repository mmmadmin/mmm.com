<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div align="right">
    <div>
        <fmt:message key="button.locale"/>:
            <c:url var="englishLocaleUrl" value="/home">
                <c:param name="locale" value="en" />
            </c:url>
            <c:url var="spanishLocaleUrl" value="/home">
                <c:param name="locale" value="es" />
            </c:url>
            <c:url var="chineseLocaleUrl" value="/home">
                <c:param name="locale" value="zh" />
            </c:url>
        
            <a href='<c:out value="${englishLocaleUrl}"/>'><fmt:message key="locale.english"/></a>
            <a href='<c:out value="${spanishLocaleUrl}"/>'><fmt:message key="locale.spanish"/></a>
            <a href='<c:out value="${chineseLocaleUrl}"/>'><fmt:message key="locale.chinese"/></a>
    </div>
    
    <div>&nbsp;</div>
    

</div>

    <div align="center"><fmt:message key="site.footer"/>1</div>