<%--
  Created by IntelliJ IDEA.
  User: usha
  Date: 5/6/2017
  Time: 4:44 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Result</title>
    <meta name="layout" content="mylayout">

</head>

<body>
<div class="modal-dialog">
    <div class="loginmodal-container">
        <g:form action="show" style="border:1px solid #ccc">
            <table>

                <tr>
                    <td>Enter batch:</td>
                    <td><g:textField name="batch" value="${params.batch}" required=""></g:textField> </td>
                </tr>

                <tr>
                    <td>Enter Roll No.:</td>
                    <td><g:textField name="rollNum" value="${params.rollNum}" required=""></g:textField> </td>
                </tr>

                <tr>
                    <td><g:submitButton name="result" value="Submit"></g:submitButton>
                        <input type="button" value="Go Ajax" onclick="showResult()">
                    </td>
                </tr>
            </table>
        </g:form>


    </div>
</div>

<div id="div_show_result"></div>
<script>
    function showResult()
    {
        var roll_no = $("#rollNum").val();
        var batch = $("#batch").val();
        var ajaxurl = "${createLink(controller: "home",action: "show")}"
        $.ajax({
            url:ajaxurl,
            method:"POST",
            data:"batch="+batch+"&rollNum="+rollNum,
            success:function(msg){
                $(".modal-dialog").hide();
                $("#div_show_result").html(msg);

            }
        })
    }
</script>
</body>
</html>