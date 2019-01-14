<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<html>

<head>
<title>RoadSide Help</title>
</head>

<body>

	<h2>Welcome to RoadSide Help Home Page</h2>

	<hr>

	<p>
		Our Service is available only for Rangpur to Bogra Highway! </br>We repair
		only Car and Motorbike!!!
	</p>

	<hr>
	
	<form:form action="${pageContext.request.contextPath}/processHelp" 
			   modelAttribute="helpUser" method="POST">
	
		<h2>RoadSide Help Form</h2>
	
		What type of service you need?
		<br>
		 <input type="text" path="serviceType"/>
		<br><br>
		Where your current location?<br>
		 <input type="text" path="location"/>
		<br><br>
		Put your contact number <br>
		<input type="text" path="contact"/>
		<br><br>
	
		<input type="submit" value="Send Request" />
	
	</form:form>
	
	<hr>

	<a href="${pageContext.request.contextPath}/">Back to Home Page</a>

</body>

</html>









