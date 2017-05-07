<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 5/6/2017
  Time: 4:47 PM
--%>

<%@ page import="stmarks.Marksheet" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="resultLayout">
</head>

<body>

<h2>Result</h2>
<table>

    <tr>
        <td>Name:</td>
        <td>${stdName}</td>

        <td span style="float:right"><g:if test="image">
            <g:img dir="images/student" file="${image}" width="100"></g:img>
        </g:if></td>

    </tr>
    <tr>
        <td>Roll no:</td>
        <td>${rollNum}</td>
    </tr>
    <div class="row">
        <table class="table">
            <thead>
            <tr class="tblheader">

                <th colspan="2">Subjects</th>
                <th colspan="2">TotalMarks</th>
                <th colspan="2">PassMarks</th>
                <th colspan="2">Obtained marks</th>

            </th>
            </tr>

            <g:each in="${result}"  var="list">

                <tr>

                    <td colspan="2">${list.sub.subName}</td>
                    <td colspan="2">${list.sub.totalMarks}</td>
                    <td colspan="2">${list.sub.passMarks}</td>
                    <td colspan="2">${list.obtainedMarks}</td>
                </tr>


            </g:each>
            <tr>
                <td colspan="2">Total</td>
                <td colspan="2">${total} </td>
                <td colspan="2">${passmark} </td>

                <td> ${total}</td>

            </tr>
            <tr>
                <td colspan="2">Percentage</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td> ${percent}%</td>
            </tr>
            </thead>
        </table>
    </div>
</table>
</body>
</html>