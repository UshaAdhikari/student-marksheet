<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Subject</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<h2>Edit Subject</h2>
<g:form action="update">
    <g:hiddenField name="id" value="${subjectInfo.id}"></g:hiddenField>
    <table>
        <tr><td>Subject Name</td>
            <td><g:textField name="subName" value="${subjectInfo.subName}"></g:textField></td>
        </tr>

        <tr><td>Total Marks</td>
            <td><g:textField name="totalMarks" value="${subjectInfo.totalMarks}"></g:textField></td>
        </tr>

        <tr><td colspan="2"><g:submitButton name="submit" value="Update Subject"></g:submitButton> </td> </tr>

    </table>
</g:form>
</body>
</html>