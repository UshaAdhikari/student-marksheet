<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 4/19/2017
  Time: 6:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Subjects</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<h2>Add Subject</h2>
<g:form action="save">
    <table>
        <tr><td>Subject Name</td>
            <td><g:textField name="subName"></g:textField></td>
        </tr>

        <tr><td>Total Marks</td>
            <td><g:textField name="totalMarks"></g:textField></td>
        </tr>

        <tr><td colspan="2"><g:submitButton name="submit" value="Add Subject"></g:submitButton></td> </tr>

    </table>
</g:form>
</body>
</html>