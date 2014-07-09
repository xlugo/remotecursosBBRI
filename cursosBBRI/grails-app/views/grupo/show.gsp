
<%@ page import="cursosbbri.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-grupo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-grupo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list grupo">
			
				<g:if test="${grupoInstance?.curso}">
				<li class="fieldcontain">
					<span id="curso-label" class="property-label"><g:message code="grupo.curso.label" default="Curso" /></span>
					
						<span class="property-value" aria-labelledby="curso-label"><g:link controller="curso" action="show" id="${grupoInstance?.curso?.id}">${grupoInstance?.curso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoInstance?.salon}">
				<li class="fieldcontain">
					<span id="salon-label" class="property-label"><g:message code="grupo.salon.label" default="Salon" /></span>
					
						<span class="property-value" aria-labelledby="salon-label"><g:link controller="salon" action="show" id="${grupoInstance?.salon?.id}">${grupoInstance?.salon?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoInstance?.fhorainicio}">
				<li class="fieldcontain">
					<span id="fhorainicio-label" class="property-label"><g:message code="grupo.fhorainicio.label" default="Fhorainicio" /></span>
					
						<span class="property-value" aria-labelledby="fhorainicio-label"><g:formatDate date="${grupoInstance?.fhorainicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoInstance?.fhorafinal}">
				<li class="fieldcontain">
					<span id="fhorafinal-label" class="property-label"><g:message code="grupo.fhorafinal.label" default="Fhorafinal" /></span>
					
						<span class="property-value" aria-labelledby="fhorafinal-label"><g:formatDate date="${grupoInstance?.fhorafinal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoInstance?.fechaapertura}">
				<li class="fieldcontain">
					<span id="fechaapertura-label" class="property-label"><g:message code="grupo.fechaapertura.label" default="Fechaapertura" /></span>
					
						<span class="property-value" aria-labelledby="fechaapertura-label"><g:formatDate date="${grupoInstance?.fechaapertura}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoInstance?.alumnos}">
				<li class="fieldcontain">
					<span id="alumnos-label" class="property-label"><g:message code="grupo.alumnos.label" default="Alumnos" /></span>
					
						<g:each in="${grupoInstance.alumnos}" var="a">
						<span class="property-value" aria-labelledby="alumnos-label"><g:link controller="alumno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${grupoInstance?.fechacreacion}">
				<li class="fieldcontain">
					<span id="fechacreacion-label" class="property-label"><g:message code="grupo.fechacreacion.label" default="Fechacreacion" /></span>
					
						<span class="property-value" aria-labelledby="fechacreacion-label"><g:formatDate date="${grupoInstance?.fechacreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoInstance?.instructor}">
				<li class="fieldcontain">
					<span id="instructor-label" class="property-label"><g:message code="grupo.instructor.label" default="Instructor" /></span>
					
						<span class="property-value" aria-labelledby="instructor-label"><g:link controller="instructor" action="show" id="${grupoInstance?.instructor?.id}">${grupoInstance?.instructor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${grupoInstance?.id}" />
					<g:link class="edit" action="edit" id="${grupoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
