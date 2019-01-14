<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  


<html>

<body>

Request Help
<hr>

<p>
Service need : ${helpUser.serviceType}<br>
Current Location : ${helpUser.location}<br>
Contact Number : ${helpUser.contact}
</p>

</body>

</html>