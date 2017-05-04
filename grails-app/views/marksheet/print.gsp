<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 5/3/2017
  Time: 12:01 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Search Student Marksheet</title>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav">
    <ul>
        <li><g:link action="create" controller="marksheet">Create Marksheet</g:link> </li>
        <li><g:link action="list" controller="marksheet">Marksheet List</g:link> </li>
    </ul>
</div>
<g:if test="${flash.message}">
    <h2>${flash.message}</h2>
</g:if>
<g:form action="finalMarksheet">
    <table>
        <tr>
            <td>Batch</td>
            <td><g:textField name="batch"></g:textField></td>
        </tr>
        <tr>
            <td>Roll No.</td>
            <td><g:textField name="rollNum"></g:textField></td>
        </tr>
        <tr>
            <td colspan="2"><g:submitButton name="Submit" value="Submit"></g:submitButton></td>
        </tr>
    </table>
</g:form>

</body>
</html>