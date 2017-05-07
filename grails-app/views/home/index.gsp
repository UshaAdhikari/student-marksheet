<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 5/6/2017
  Time: 4:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>View Result</title>
    <meta name="layout" content="resultLayout">
</head>
<body>

<g:form name = "formLogin" action="show">
    <table>
        <tr>
            <td>Batch:</td>
            <td><g:textField name="batch"></g:textField></td>
        </tr>

        <tr>
            <td>Roll no.:</td>
            <td><g:textField name="rollNum"></g:textField></td>
        </tr>

        <div><tr><td colspan="2"><g:submitButton name="login" value="Login"></g:submitButton> </td> </tr></div>

    </table>
</g:form>

</body>
</html>