<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Product</title>
</head>
<body>
<table border= "1">
    <tr style="background-color:#daa520">
        <td> Product Id</td>
        <td> Product Code</td>
        <td> Product Name</td>
        <td> Creation Date</td>
        <td> Price</td>
        <td> Category</td>
    </tr>
    <tr>
        <td> ${product.id} </td>
        <td> ${product.code} </td>
        <td> ${product.name} </td>
        <td> ${product.creationDate} </td>
        <td> ${product.price} </td>
        <td> ${product.category.name} </td>
    </tr>
</table>
</body>
</html>
