<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>ProductDTO</title>
</head>
<body>
<table border="1">
    <tr style="background-color:#daa520">
        <th> Product Code</td>
        <th> Product Name</td>
        <th> Price</td>
        <th> Category Id</td>
    </tr>
    <tr>
        <td> ${productDTO.code} </td>
        <td> ${productDTO.name} </td>
        <td> ${productDTO.price} </td>
        <td> ${productDTO.categoryId} </td>
    </tr>
</table>
</body>
</html>
