
<%@ page import="stmarks.Marksheet" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'marksheet.label', default: 'Marksheet')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-marksheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
		<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
	</ul>
</div>
<div id="show-marksheet" class="content scaffold-show" role="main">
	<h1><g:message code="default.show.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<ol class="property-list marksheet">

		<g:if test="${marksheetInstance?.obtainedMarks}">
			<li class="fieldcontain">
				<span id="marks-label" class="property-label"><g:message code="marksheet.marks.label" default="Obtained Marks" /></span>

				<span class="property-value" aria-labelledby="marks-label"><g:fieldValue bean="${marksheetInstance}" field="obtainedMarks"/></span>

			</li>
		</g:if>

		%{--
		<g:if test="${marksheetInstance?.sub.totalMarks}">
			<li class="fieldcontain">
				<span id="totalMarks-label" class="property-label"><g:message code="marksheet.totalMarks.label" default="Total Marks" /></span>

				<span class="property-value" aria-labelledby="totalMarks-label"><g:link controller="subject" action="show" id="${marksheetInstance?.sub?.totalMarks}">${marksheetInstance?.sub?.totalMarks}</g:link></span>

			</li>
		</g:if>
--}%

		<g:if test="${marksheetInstance?.std}">
			<li class="fieldcontain">
				<span id="std-label" class="property-label"><g:message code="marksheet.std.label" default="Std" /></span>

				<span class="property-value" aria-labelledby="std-label"><g:link controller="student" action="index" id="${marksheetInstance?.std?.id}">${marksheetInstance?.std?.stdName}</g:link></span>

			</li>
		</g:if>

		<g:if test="${marksheetInstance?.sub}">
			<li class="fieldcontain">
				<span id="sub-label" class="property-label"><g:message code="marksheet.sub.label" default="Sub" /></span>

				<span class="property-value" aria-labelledby="sub-label"><g:link controller="subject" action="show" id="${marksheetInstance?.sub?.id}">${marksheetInstance?.sub?.subName}</g:link></span>

			</li>
		</g:if>

	</ol>
	<g:form>
		<fieldset class="buttons">
			<g:hiddenField name="id" value="${marksheetInstance?.id}" />
			<g:link class="edit" action="edit" id="${marksheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
			<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		</fieldset>
	</g:form>
</div>
</body>
</html>
