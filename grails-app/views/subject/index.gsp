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
<div><h2><span style="padding-left: 10px; padding-top: 10px">Subject List</span> <span style="float:right; padding-right: 10px"><g:link  action="save">Create Subject</g:link></span style="float:right"></h2></div>

<div style="float: right; padding: 15px">
    <g:form action="search">
        <g:textField name="keyword" placeholder="Type keyword to search">${params.keyword}</g:textField>
        <g:submitButton name="search" value="Search"></g:submitButton>
    </g:form>
</div>


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

<div class="pagination">
    <g:paginate total="${totalCount}" params="${params}"></g:paginate>
</div>

</body>
</html>