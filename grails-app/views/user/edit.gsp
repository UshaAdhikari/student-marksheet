<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create User</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<h2>Edit User</h2>
<g:form action="update">
    <g:hiddenField name="id" value="${userInfo.id}"></g:hiddenField>
    <g:render template="form"></g:render>
    <div><tr><td colspan="2"><g:submitButton name="submit" value="Update User"></g:submitButton> </td> </tr></div>
</g:form>
</body>
</html>