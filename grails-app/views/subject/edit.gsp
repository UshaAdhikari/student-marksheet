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
    <g:hiddenField name="id" value="${subjectInfo.id}"></g:hiddenField>
    <table>
        <tr><td>Username</td>
            <td><g:textField name="username" value="${userInfo.username}"></g:textField></td>
        </tr>

        <tr><td>Password</td>
            <td><g:passwordField name="password" value="${userInfo.password}"></g:passwordField></td>
        </tr>

        <tr><td>User Type</td>
            <td><g:textField name="userType" value="${userInfo.userType}"></g:textField></td>
        </tr>

        <tr><td colspan="2"><g:submitButton name="submit" value="Update User"></g:submitButton> </td> </tr>

    </table>
</g:form>
</body>
</html>