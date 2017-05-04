<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 4/19/2017
  Time: 6:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Students List</title>
    <meta name="layout" content="main">
    <meta name="keywords" content="">
</head>

<body>
<div><h2><span style="padding-left: 10px">Student List</span> <span style="float:right; padding-right: 5px"><g:link  action="save">Create Student</g:link></span style="float:right"></h2></div>
<div style="float: right; padding: 15px">
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
            <td><g:if test = "${list.image}">
                <g:img dir="images/student" file="${list.image}" width="100"></g:img>
            </g:if>
            </td>
            <td><g:link action="edit" id="${list.id}">Edit</g:link></td>
            <td><g:link action="delete" id="${list.id}">Delete</g:link></td>

            %{--<g:each in="${session.userType}" var="type">
                <g:if test="${type == "admin"}">
                    <td><g:link action="edit" id="${list.id}">Edit</g:link></td>
                    <td><g:link action="delete" id="${list.id}" onclick="return confirm('Do you really want to delete?')">Delete</g:link></td>
                </g:if>
            </g:each>--}%
        </tr>
    </g:each>
    </tbody>
</table>

<div class="pagination">
    <g:paginate total="${totalCount}" params="${params}"></g:paginate>
</div>

</body>
</html>