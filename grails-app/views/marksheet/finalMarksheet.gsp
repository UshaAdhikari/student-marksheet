<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 5/3/2017
  Time: 12:01 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="mylayout">
    <title>Final Marksheet</title>
</head>

<body>

<div style="float: right">
    <table>
        <g:each in="${marksheet}" status="i" var="list">
            <g:if test="${i==0}" >
                <tr>
                    <td>Student Name: </td>
                    <td>${list.std.stdName} </td>
                </tr>
                <tr>
                    <td>Batch: </td>
                    <td>${list.std.batch} </td>
                </tr>

                <tr>
                    <td>Email: </td>
                    <td>${list.std.email} </td>
                </tr>

                <tr>
                    <td>Roll No.</td>
                    <td>${list.std.rollNum}</td>
                </tr>
            </g:if>
        </g:each>
    </table>
</div>

<table>
    <thead>
    <th>S.N.</th>
    <th>Subject</th>
    <th>Total Marks</th>
    <th>Obtained Marks</th>
    </thead>
    <tbody>
    <g:each in="${marksheet}" status="i" var="list">
        <tr>
            <td>${i+1}</td>
            <td>${list.sub.subName}</td>
            <td>${list.sub.totalMarks}</td>
            <g:if test="${list.obtainedMarks < 32}">
                <td style="color: red">${list.obtainedMarks}</td>
            </g:if>
            <g:if test="${list.obtainedMarks >= 32}">
                <td>${list.obtainedMarks}</td>
            </g:if>
        </tr>
    </g:each>
    <tr>
        <td></td>
        <td><h3>Total</h3></td>
        <td><h3>${finalTotalMarks}</h3></td>
        <td><h3>${finalMarks}</h3></td>
    </tr>
    </tbody>
</table>

<div style="margin-left: 550px">
    <h3>Percentage : ${percentage+" %"}</h3><br>
    <h3>Status     : ${pf}</h3><br>
    <g:if test="${pf.equalsIgnoreCase("pass")}">
        <h3>Congratulations</h3>
    </g:if>
    <g:if test="${pf.equalsIgnoreCase("fail")}">
        <h2>You failed in ${count} subject(s)</h2>
    </g:if>
</div>

<div>

</div>
</body>
</html>