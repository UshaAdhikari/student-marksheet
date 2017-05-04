<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Subject</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<h2>Edit Subject</h2>
<g:form action="update">
    <g:hiddenField name="id" value="${subjectInfo.id}"></g:hiddenField>
    <g:render template="form"></g:render>
    <div>
        <tr><td colspan="2"><g:submitButton name="submit" value="Update Subject"></g:submitButton> </td> </tr>
    </div>

</g:form>
</body>
</html>