<%@ page import="cursosbbri.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="solicitud">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title>Inscripción a grupo</title>
	</head>
	<body>
		
		<div id="edit-alumno" class="content scaffold-edit" role="main">
			<h1>inscripción a grupo</h1>
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${alumnoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${alumnoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${alumnoInstance?.id}" />
				<g:hiddenField name="version" value="${alumnoInstance?.version}" />
				<fieldset class="form">
					<g:render template="solicitudc"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.sigin.label', default: 'Inscribirme')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
