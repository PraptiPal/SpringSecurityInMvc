
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<html>
<head>
<title>
Welcome to spring security demo
</title>

</head>

<body>
Is it really happening?

<form:form action = "${pageContext.request.contextPath}/logout" method = "POST">
<input type = "submit" value = "Logout"/>
</form:form>


</body>
</html>