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

<div><h2>User List<span style="float:right"><g:link  action="save">Create User</g:link></span style="float:right"> </h2> </div>
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

<div class="pagination">
    <g:paginate total="${totalCount}" params="${params}"></g:paginate>
</div>

</body>
</html>