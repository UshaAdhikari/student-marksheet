
<%@ page import="stmarks.Marksheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'marksheet.label', default: 'Marksheet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-marksheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-marksheet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<th>S.N.</th>
					
						<g:sortableColumn property="marks" title="${message(code: 'marksheet.marks.label', default: 'Marks')}" />
					
						<th><g:message code="marksheet.std.label" default="Std" /></th>
					
						<th><g:message code="marksheet.sub.label" default="Sub" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${marksheetInstanceList}" status="i" var="marksheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${marksheetInstance.id}">${i+1}</g:link></td>

						<td>${marksheetInstance.marks}</td>

						%{--<td>${fieldValue(bean: marksheetInstance, field: "marks")}</td>--}%
					
						%{--<td><g:link action="show" id="${marksheetInstance.id}">${fieldValue(bean: marksheetInstance, field: "marks")}</g:link></td>--}%
					
						<td>${marksheetInstance.std.stdName}</td>

						<td>${marksheetInstance.sub.subName}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${marksheetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
