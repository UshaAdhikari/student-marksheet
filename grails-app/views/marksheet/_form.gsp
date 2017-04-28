<%@ page import="stmarks.Marksheet" %>



<div class="fieldcontain ${hasErrors(bean: marksheetInstance, field: 'marks', 'error')} required">
	<label for="marks">
		<g:message code="marksheet.marks.label" default="Marks" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="marks" type="number" value="${marksheetInstance.marks}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: marksheetInstance, field: 'std', 'error')} required">
	<label for="std">
		<g:message code="marksheet.std.label" default="Std" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="std" name="std.id" from="${stmarks.Student.list()}" optionKey="id" required="" value="${marksheetInstance?.std?.id}" optionValue="stdName" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: marksheetInstance, field: 'sub', 'error')} required">
	<label for="sub">
		<g:message code="marksheet.sub.label" default="Sub" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sub" name="sub.id" from="${stmarks.Subject.list()}" optionKey="id" required="" value="${marksheetInstance?.sub?.id}" optionValue="subName" class="many-to-one"/>
</div>

