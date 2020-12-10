<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Categories</title>
</head>
<body>

<table border="1">
    <tr style="background-color:#daa520">
        <th> Category Id</td>
        <th> Category Name</td>
    </tr>
    <c:forEach items="${categories}" var="category">
        <tr>
            <td> ${category.id} </td>
            <td> ${category.name} </td>
        </tr>
    </c:forEach>
</table>

<p></p>
<form action="/showAddProductForm">
    <input type="submit" value="Add a product"/>
</form>

<p></p>
<form action="/singleProductPage">
    <input type="submit" value="Find a product by ID"/>
</form>

<p></p>
<table border="1">
    <tr style="background-color:#daa520">
        <th> Category Id</td>
        <th> Category name</td>
        <th> Products</td>
    </tr>
    <c:forEach items="${categories}" var="category">
        <tr>
            <td> ${category.id} </td>
            <td> ${category.name} </td>
            <td> ${category.products} </td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
