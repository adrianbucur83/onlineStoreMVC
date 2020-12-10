<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Category</title>
</head>
<body>
<table>
    <tr style="background-color:#daa520">
        <th> Category Id</td>
        <th> Category Name</td>
    </tr>
    <tr>
        <td> ${category.id} </td>
        <td> ${category.name} </td>
    </tr>
</table>
</body>
</html>
