
<%@ page import="cursosbbri.Ufuncion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ufuncion.label', default: 'Categorización')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ufuncion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ufuncion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ufuncion">
			
				<g:if test="${ufuncionInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="ufuncion.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${ufuncionInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ufuncionInstance?.alumnos}">
				<li class="fieldcontain">
					<span id="alumnos-label" class="property-label"><g:message code="ufuncion.alumnos.label" default="Alumnos" /></span>
					
						<g:each in="${ufuncionInstance.alumnos}" var="a">
						<span class="property-value" aria-labelledby="alumnos-label"><g:link controller="alumno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ufuncionInstance?.contactos}">
				<li class="fieldcontain">
					<span id="contactos-label" class="property-label"><g:message code="ufuncion.contactos.label" default="Contactos" /></span>
					
						<g:each in="${ufuncionInstance.contactos}" var="c">
						<span class="property-value" aria-labelledby="contactos-label"><g:link controller="contacto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ufuncionInstance?.cursos}">
				<li class="fieldcontain">
					<span id="cursos-label" class="property-label"><g:message code="ufuncion.cursos.label" default="Cursos" /></span>
					
						<g:each in="${ufuncionInstance.cursos}" var="c">
						<span class="property-value" aria-labelledby="cursos-label"><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ufuncionInstance?.instructors}">
				<li class="fieldcontain">
					<span id="instructors-label" class="property-label"><g:message code="ufuncion.instructors.label" default="Instructors" /></span>
					
						<g:each in="${ufuncionInstance.instructors}" var="i">
						<span class="property-value" aria-labelledby="instructors-label"><g:link controller="instructor" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ufuncionInstance?.id}" />
					<g:link class="edit" action="edit" id="${ufuncionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
