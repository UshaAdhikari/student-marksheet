<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Student</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<h2>Edit Student</h2>
<g:form action="update">
    <g:hiddenField name="id" value="${studentInfo.id}"></g:hiddenField>
    <g:render template="form"></g:render>
    <g:hiddenField name="image" value="${studentInfo.image}"></g:hiddenField>

    <div>
        <tr><td colspan="2"><g:submitButton name="submit" value="Update Student"></g:submitButton> </td> </tr>
    </div>
</g:form>
</body>
</html>