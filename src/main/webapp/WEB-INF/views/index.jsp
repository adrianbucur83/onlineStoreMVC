<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Index.jsp</title>
</head>
<body>
Prerequisites:<br>
<ul>
    <li>Clone the repository locally</li>
    <li>Create a branch from master with the following format: "test/FirstName_LastName"</li>
    <li>The commits should be made only on your branch (we encourage frequent commits)</li>
</ul>

<br>

Requirements:<br>
<ul>
    <li>Configure the Hibernate framework to:
        <ul>
            <li>Connect the application to a database</li>
            <li>Map the "Product" class to the database</li>
            <li>Implement the methods from ProductDAO interface</li>
            <li>Create a "Category" model in order to have a relation with the "Product" and map it to DB</li>
            <li>Add a (CRUD) method of your choice to include the "Category" model</li>
        </ul>
    </li>
    <li>Wire the application using Spring framework, on the existing codebase as follows:<br>
        <ul>
            <li>You can use annotations or xml configuration</li>
            <li>The functionalities in ProductDAO must reflect in the presentation layer</li>
            <li>You can use (and even extend) the existing views for testing purposes</li>
        </ul>
    </li>
</ul>
</body>
</html>