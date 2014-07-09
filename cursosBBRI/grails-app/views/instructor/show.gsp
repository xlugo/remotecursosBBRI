
<%@ page import="cursosbbri.Instructor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instructor.label', default: 'Instructor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-instructor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-instructor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list instructor">
			
				<g:if test="${instructorInstance?.unisoft}">
				<li class="fieldcontain">
					<span id="unisoft-label" class="property-label"><g:message code="instructor.unisoft.label" default="Unisoft" /></span>
					
						<span class="property-value" aria-labelledby="unisoft-label"><g:fieldValue bean="${instructorInstance}" field="unisoft"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.utitulo}">
				<li class="fieldcontain">
					<span id="utitulo-label" class="property-label"><g:message code="instructor.utitulo.label" default="Utitulo" /></span>
					
						<span class="property-value" aria-labelledby="utitulo-label"><g:link controller="utitulo" action="show" id="${instructorInstance?.utitulo?.id}">${instructorInstance?.utitulo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="instructor.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${instructorInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.apellidopaterno}">
				<li class="fieldcontain">
					<span id="apellidopaterno-label" class="property-label"><g:message code="instructor.apellidopaterno.label" default="Apellidopaterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidopaterno-label"><g:fieldValue bean="${instructorInstance}" field="apellidopaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.apellidomaterno}">
				<li class="fieldcontain">
					<span id="apellidomaterno-label" class="property-label"><g:message code="instructor.apellidomaterno.label" default="Apellidomaterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidomaterno-label"><g:fieldValue bean="${instructorInstance}" field="apellidomaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="instructor.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${instructorInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.departamento}">
				<li class="fieldcontain">
					<span id="departamento-label" class="property-label"><g:message code="instructor.departamento.label" default="Departamento" /></span>
					
						<span class="property-value" aria-labelledby="departamento-label"><g:fieldValue bean="${instructorInstance}" field="departamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.puesto}">
				<li class="fieldcontain">
					<span id="puesto-label" class="property-label"><g:message code="instructor.puesto.label" default="Puesto" /></span>
					
						<span class="property-value" aria-labelledby="puesto-label"><g:fieldValue bean="${instructorInstance}" field="puesto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.oficina}">
				<li class="fieldcontain">
					<span id="oficina-label" class="property-label"><g:message code="instructor.oficina.label" default="Oficina" /></span>
					
						<span class="property-value" aria-labelledby="oficina-label"><g:fieldValue bean="${instructorInstance}" field="oficina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="instructor.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${instructorInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.telefonoext}">
				<li class="fieldcontain">
					<span id="telefonoext-label" class="property-label"><g:message code="instructor.telefonoext.label" default="Telefonoext" /></span>
					
						<span class="property-value" aria-labelledby="telefonoext-label"><g:fieldValue bean="${instructorInstance}" field="telefonoext"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.ufuncion}">
				<li class="fieldcontain">
					<span id="ufuncion-label" class="property-label"><g:message code="instructor.ufuncion.label" default="Ufuncion" /></span>
					
						<span class="property-value" aria-labelledby="ufuncion-label"><g:link controller="ufuncion" action="show" id="${instructorInstance?.ufuncion?.id}">${instructorInstance?.ufuncion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.utipo}">
				<li class="fieldcontain">
					<span id="utipo-label" class="property-label"><g:message code="instructor.utipo.label" default="Utipo" /></span>
					
						<span class="property-value" aria-labelledby="utipo-label"><g:link controller="utipo" action="show" id="${instructorInstance?.utipo?.id}">${instructorInstance?.utipo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.grupos}">
				<li class="fieldcontain">
					<span id="grupos-label" class="property-label"><g:message code="instructor.grupos.label" default="Grupos" /></span>
					
						<g:each in="${instructorInstance.grupos}" var="g">
						<span class="property-value" aria-labelledby="grupos-label"><g:link controller="grupo" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.fechacreacion}">
				<li class="fieldcontain">
					<span id="fechacreacion-label" class="property-label"><g:message code="instructor.fechacreacion.label" default="Fechacreacion" /></span>
					
						<span class="property-value" aria-labelledby="fechacreacion-label"><g:formatDate date="${instructorInstance?.fechacreacion}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${instructorInstance?.id}" />
					<g:link class="edit" action="edit" id="${instructorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
