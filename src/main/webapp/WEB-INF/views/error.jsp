<%--
  Created by IntelliJ IDEA.
  User: BucurA
  Date: 26.11.2020
  Time: 01:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Error Page</title>
</head>
<body>
<h3>Please enter the correct details</h3>
<p></p>
<tr><td>
<input type=button value="Back" onCLick="history.back()">
</td></tr>

<p></p>

<table>
    <tr>
        <td> Error: </td>
        <td> ${message} </td>
    </tr>
</table>
</body>
</html>
