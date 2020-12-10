<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Products</title>
</head>
<body>

<table border="1">
    <tr style="background-color:#daa520">
        <th> Product Id</td>
        <th> Product Code</td>
        <th> Product Name</td>
        <th> Creation Date</td>
        <th> Price</td>
        <th> Category</td>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td> ${product.id} </td>
            <td> ${product.code} </td>
            <td> ${product.name} </td>
            <td> ${product.creationDate} </td>
            <td> ${product.price} </td>
            <td> ${product.category.name} </td>
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
    </tr>
    <c:forEach items="${categories}" var="category">
        <tr>
            <td> ${category.id} </td>
            <td> ${category.name} </td>
        </tr>
    </c:forEach>
</table>

<p></p>
<form action="/showAddCategoryForm">
    <input type="submit" value="Add a category"/>
</form>

</body>
</html>
