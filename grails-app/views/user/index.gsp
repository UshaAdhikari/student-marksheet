<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 4/18/2017
  Time: 8:04 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User List</title>
    <meta name="layout" content="main">
</head>

<body>
<h2>User List</h2>
<g:if test="${flash.message}">
    <div>${flash.message }</div>
</g:if>
<table>
    <thead>
    <tr>
        <th>SN</th>
        <th>User Name</th>
        <th>Type</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>

    <tbody>
    <g:each in="${ulist}" var="${list}" status="i">
        <tr>
            <td>${i+1}</td>
            <td>${list.username}</td>
            <td>${list.userType}</td>
            <td><g:link action="edit" id="${list.id}">Edit</g:link></td>
            <td><g:link action="delete" id="${list.id}">Delete</g:link> </td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>