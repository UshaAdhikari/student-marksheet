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
    <g:render template="form"></g:render>
    <div>
        <tr><td colspan="2"><g:submitButton name="submit" value="Add student"></g:submitButton> </td> </tr>
    </div>


</g:form>
</body>
</html>