
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


	<security:authorize access = "hasRole('Manager')">
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		(restricted)
	</p>
	
	</security:authorize>

	<security:authorize access = "hasRole('Admin')">
	<p>
		<a href="${pageContext.request.contextPath}/system">Admin access</a>
		(admin access only)
	</p>
	</security:authorize>

<form:form action = "${pageContext.request.contextPath}/logout" method = "POST">
<input type = "submit" value = "Logout"/>
</form:form>


</body>
</html>