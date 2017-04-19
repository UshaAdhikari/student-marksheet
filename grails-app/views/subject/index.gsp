<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 4/19/2017
  Time: 6:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Subject List</title>
    <meta name="layout" content="main">
</head>

<body>
<h2>Subject List</h2>

<g:if test="${flash.message}">
    <div>${flash.message}</div>
</g:if>
<table>
    <thead>
    <tr>
        <th>SN</th>
        <th>Subject Name</th>
        <th>Total Marks</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>

    <tbody>
    <g:each in="${sublist}" var="${list}" status="i">
        <tr>
            <td>${i+1}</td>
            <td>${list.subName}</td>
            <td>${list.totalMarks}</td>
            <td><g:link action="edit" id="${list.id}">Edit</g:link></td>
            <td><g:link action="delete" id="${list.id}">Delete</g:link> </td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>