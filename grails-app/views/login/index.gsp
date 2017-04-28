<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 4/25/2017
  Time: 8:19 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Login</title>
    <meta name="layout" content="main">
</head>

<body>
<h2>Login Form</h2>
<g:form name = "formLogin" action="postLogin">
    <table>
        <tr>
            <td>Username</td>
            <td><g:textField name="username"></g:textField></td>
        </tr>

        <tr>
            <td>Password</td>
            <td><g:passwordField name="password"></g:passwordField></td>
        </tr>

        <div><tr><td colspan="2"><g:submitButton name="login" value="Login"></g:submitButton> </td> </tr></div>

    </table>
</g:form>
</body>
</html>