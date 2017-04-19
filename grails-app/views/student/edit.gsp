<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Edit</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<h2>Edit Student</h2>
<g:form action="update">
    <g:hiddenField name="id" value="${studentInfo.id}"></g:hiddenField>
    <table>
        <tr><td>Name</td>
            <td><g:textField name="stdName" value="${studentInfo.stdName}"></g:textField></td>
        </tr>

        <tr><td>Address</td>
            <td><g:textField name="address" value="${studentInfo.address}"></g:textField></td>
        </tr>

        <tr><td>Email</td>
            <td><g:textField name="email" value="${studentInfo.email}"></g:textField></td>
        </tr>

        <tr><td>Phone Number</td>
            <td><g:textField name="phone" value="${studentInfo.phone}"></g:textField></td>
        </tr>

        <tr><td>Roll Number</td>
            <td><g:textField name="rollNum" value="${studentInfo.rollNum}"></g:textField></td>
        </tr>

        <tr><td>Batch</td>
            <td><g:textField name="batch" value="${studentInfo.batch}"></g:textField></td>
        </tr>

        <tr><td>Image Name</td>
            <td><g:textField name="imageName" value="${studentInfo.imageName}"></g:textField></td>
        </tr>

        <tr><td colspan="2"><g:submitButton name="submit" value="Update Student"></g:submitButton> </td> </tr>

    </table>
</g:form>
</body>
</html>