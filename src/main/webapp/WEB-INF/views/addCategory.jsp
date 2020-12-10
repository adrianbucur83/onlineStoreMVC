<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:url value = "/addCategory" var="categoryAddUrl"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add new category</title>
</head>
<body>
<form:form method="POST" action="${categoryAddUrl}" modelAttribute="category">
    <form:label path="name">Name</form:label> <form:input path="name"/>
    <input type="submit" value="Submit"/>
</form:form>
<p></p>
<form action="/">
    <input type="submit" value="Back to products home" />
</form>
</body>
</html>

