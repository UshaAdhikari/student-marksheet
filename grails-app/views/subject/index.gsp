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
<table>
    <thead>
    <tr>
        <th>SN</th>
        <th>Subject Name</th>
        <th>Total Marks</th>
        <th>Edit</th>
    </tr>
    </thead>

    <tbody>
    <g:each in="${sublist}" var="${list}" status="i">
        <tr>
            <td>${i+1}</td>
            <td>${list.subName}</td>
            <td>${list.totalMarks}</td>
            <td></td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>