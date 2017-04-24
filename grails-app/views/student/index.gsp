<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 4/19/2017
  Time: 6:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Student List</title>
    <meta name="layout" content="main">
</head>

<body>
<div><h2>Student List <span style="float:right"><g:link  action="save">Create Student</g:link></span style="float:right"></h2></div>
<div style="float: right">
    <g:form action="search">
        <g:textField name="keyword" placeholder="Type keyword to search">${params.keyword}</g:textField>
        <g:submitButton name="search" value="Search"></g:submitButton>
    </g:form>
</div>

<g:if test="${flash.message}">
    <div>${flash.message }</div>
</g:if>
<table>
    <thead>
    <tr>
        <th>SN</th>
        <th>Student Name</th>
        <th>Address</th>
        <th>Email</th>
        <th>Phone number</th>
        <th>Roll number</th>
        <th>Batch</th>
        <th>Image</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>

    <tbody>
    <g:each in="${stdlist}" var="${list}" status="i">
        <tr>
            <td>${i+1}</td>
            <td>${list.stdName}</td>
            <td>${list.address}</td>
            <td>${list.email}</td>
            <td>${list.phone}</td>
            <td>${list.rollNum}</td>
            <td>${list.batch}</td>
            <td>${list.imageName}</td>
            <td><g:link action="edit" id="${list.id}">Edit</g:link></td>
            <td><g:link action="delete" id="${list.id}">Delete</g:link> </td>
        </tr>
    </g:each>
    </tbody>
</table>

<div class="pagination">
    <g:paginate total="${totalCount}" params="${params}"></g:paginate>
</div>

</body>
</html>