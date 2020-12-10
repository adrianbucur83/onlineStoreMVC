<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Response</title>
</head>
<body>
<table>
    <tr style="background-color:#daa520">
        <th> Status</td>
        <th> Errors</td>
    </tr>
    <tr>
        <td> ${response.status} </td>
        <td> ${response.errorList} </td>
    </tr>
</table>
</body>
</html>
