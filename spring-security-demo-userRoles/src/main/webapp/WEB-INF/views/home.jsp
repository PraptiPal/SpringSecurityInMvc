
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>

<%@ taglib prefix = "security" uri = "http://www.springframework.org/security/tags" %>
<html>
<head>
<title>
Welcome to spring security demo
</title>

</head>

<body>
Is it really happening?

User : <security:authentication property = "principal.username"/>

Role(s) : <security:authentication property = "principal.authorities"/>

<hr>
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		(restricted)
	</p>
<hr>


<hr>
	<p>
		<a href="${pageContext.request.contextPath}/system">Admin access</a>
		(admin access only)
	</p>
<hr>
<form:form action = "${pageContext.request.contextPath}/logout" method = "POST">
<input type = "submit" value = "Logout"/>
</form:form>


</body>
</html>