<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>RoadSide Help</title>
</head>

<body>
	<h2>Welcome to RoadSide Help Home Page</h2>
	<hr>
	
	<p>
	Our Service is available only for Rangpur to Bogra Highway!
	</br>We repair only Car and Motorbike!!!
	</p>
	
	<hr>
	
	<!-- display user name and role -->
	
	<p>
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />
	</p>
	
	<!-- Add a link to point to /help ... this is for sending notification form -->
	
	<p>
		You need a help? Please fill up the <a href="${pageContext.request.contextPath}/help">form</a>.
	</p>
	
	<security:authorize access="hasRole('SERVICE')">
	
		<!-- Add a link to point to /leaders ... this is for the managers -->
		
		<p>
			<a href="${pageContext.request.contextPath}/services">Show Notifications</a>
			(Only for Service Provider)
		</p>

	</security:authorize>	
	
	
	<security:authorize access="hasRole('ADMIN')">  

		<!-- Add a link to point to /systems ... this is for the admins -->
		
		<p>
			<a href="${pageContext.request.contextPath}/systems">Show Reviews</a>
			(Only for Admin)
		</p>
	
	</security:authorize>
	
	<hr>
	
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
</body>

</html>









