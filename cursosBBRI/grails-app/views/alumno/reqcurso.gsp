<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="solicitud">
		<title><g:message code="default.reqcurso.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="create-alumno" class="content scaffold-create" role="main">
			<h1><g:message code="default.reqcurso.label" args="[entityName]" /></h1>
			Por favor selecciona el curso 
			<g:form action="fsolicitud" >
			<g:hiddenField name="cid" value="1" />
				  <fieldset class="form">
				<g:render template="solicitud"/>
				</fieldset>			
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.search.label', default: 'Buscar')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
