<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 4/18/2017
  Time: 8:04 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Users</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<h2>Create User</h2>
<g:form action="save">
    <g:render template="form"></g:render>
    <div><tr><td colspan="2"><g:submitButton name="submit" value="Create User"></g:submitButton> </td> </tr></div>
</g:form>
</body>
</html>