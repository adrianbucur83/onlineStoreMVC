<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:url value = "/addProduct" var="productAddUrl"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add new product</title>
</head>
<body>
<form:form method="POST" action="${productAddUrl}" modelAttribute="productDTO">
    <form:label path="code">Code</form:label> <form:input path="code"/>
    <form:label path="name">Name</form:label> <form:input path="name"/>
    <form:label path="price">Price</form:label> <form:input path="price"/>
    <form:label path="categoryId">Category Id</form:label> <form:input path="categoryId"/>
    <input type="submit" value="Submit"/>
</form:form>

<form action="/">
    <input type="submit" value="List products" />
</form>
</body>
</html>
