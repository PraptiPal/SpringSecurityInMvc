
    
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<link rel = "stylesheet" type = "text/css" href = "css/demo.css">
</head>
<body>
<h3>My custom login form</h3>
<form:form action = "${pageContext.request.contextPath}/authenticateTheUser" method = "POST">

	<c:if test = "${param.error != null }">
	<i class = "failed">Sorry but no sorry. glt details enter krne pe yhich hoyenge</i>
	</c:if>

	<c:if test = "${param.logout != null }">
	<i class = "logged">Ab bhr a gaye ho jao get a life real quick</i>
	</c:if>
	<p>  User Name  <input type = "text" name = "username"/></p>
	<p> Password <input type = "password" name = "password"/></p>
	<input type = "submit" value = "Login"/>
</form:form>
</body>
</html>