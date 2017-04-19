<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 4/19/2017
  Time: 6:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Students</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<h2>Add Student</h2>
<g:form action="save">
    <table>
        <tr><td>Name</td>
            <td><g:textField name="stdName"></g:textField></td>
        </tr>

        <tr><td>Address</td>
            <td><g:textField name="address"></g:textField></td>
        </tr>

        <tr><td>Email</td>
            <td><g:textField name="email"></g:textField></td>
        </tr>

        <tr><td>Phone Number</td>
            <td><g:textField name="phone"></g:textField></td>
        </tr>

        <tr><td>Roll Number</td>
            <td><g:textField name="rollNum"></g:textField></td>
        </tr>

        <tr><td>Batch</td>
            <td><g:textField name="batch"></g:textField></td>
        </tr>

        <tr><td>Image</td>
            <td><g:textField name="imageName"></g:textField></td>
        </tr>

        <tr><td colspan="2"><g:submitButton name="submit" value="Add student"></g:submitButton> </td> </tr>

    </table>
</g:form>
</body>
</html>