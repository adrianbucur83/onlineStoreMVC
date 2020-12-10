<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:url value = "/getCategoryById" var="getCategoryByIdUrl"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Get Category By Id</title>
</head>
<body>
<form:form method="POST" action="${getCategoryByIdUrl}" modelAttribute="category">
    <form:label path="id">Insert ID </form:label> <form:input path="id"/>
    <input type="submit" value="Submit"/>
</form:form>

</body>
</html>
