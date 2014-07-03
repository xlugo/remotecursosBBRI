
<%@ page import="cursosbbri.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-alumno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alumno">
			
				<g:if test="${alumnoInstance?.unisoft}">
				<li class="fieldcontain">
					<span id="unisoft-label" class="property-label"><g:message code="alumno.unisoft.label" default="Unisoft" /></span>
					
						<span class="property-value" aria-labelledby="unisoft-label"><g:fieldValue bean="${alumnoInstance}" field="unisoft"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="alumno.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${alumnoInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellidopaterno}">
				<li class="fieldcontain">
					<span id="apellidopaterno-label" class="property-label"><g:message code="alumno.apellidopaterno.label" default="Apellidopaterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidopaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apellidopaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellidomaterno}">
				<li class="fieldcontain">
					<span id="apellidomaterno-label" class="property-label"><g:message code="alumno.apellidomaterno.label" default="Apellidomaterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidomaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apellidomaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="alumno.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${alumnoInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.departamento}">
				<li class="fieldcontain">
					<span id="departamento-label" class="property-label"><g:message code="alumno.departamento.label" default="Departamento" /></span>
					
						<span class="property-value" aria-labelledby="departamento-label"><g:fieldValue bean="${alumnoInstance}" field="departamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.puesto}">
				<li class="fieldcontain">
					<span id="puesto-label" class="property-label"><g:message code="alumno.puesto.label" default="Puesto" /></span>
					
						<span class="property-value" aria-labelledby="puesto-label"><g:fieldValue bean="${alumnoInstance}" field="puesto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.oficina}">
				<li class="fieldcontain">
					<span id="oficina-label" class="property-label"><g:message code="alumno.oficina.label" default="Oficina" /></span>
					
						<span class="property-value" aria-labelledby="oficina-label"><g:fieldValue bean="${alumnoInstance}" field="oficina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="alumno.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${alumnoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.telefonoext}">
				<li class="fieldcontain">
					<span id="telefonoext-label" class="property-label"><g:message code="alumno.telefonoext.label" default="Telefonoext" /></span>
					
						<span class="property-value" aria-labelledby="telefonoext-label"><g:fieldValue bean="${alumnoInstance}" field="telefonoext"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.fechacreacion}">
				<li class="fieldcontain">
					<span id="fechacreacion-label" class="property-label"><g:message code="alumno.fechacreacion.label" default="Fechacreacion" /></span>
					
						<span class="property-value" aria-labelledby="fechacreacion-label"><g:formatDate date="${alumnoInstance?.fechacreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.fechamodificacion}">
				<li class="fieldcontain">
					<span id="fechamodificacion-label" class="property-label"><g:message code="alumno.fechamodificacion.label" default="Fechamodificacion" /></span>
					
						<span class="property-value" aria-labelledby="fechamodificacion-label"><g:formatDate date="${alumnoInstance?.fechamodificacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.grupos}">
				<li class="fieldcontain">
					<span id="grupos-label" class="property-label"><g:message code="alumno.grupos.label" default="Grupos" /></span>
					
						<g:each in="${alumnoInstance.grupos}" var="g">
						<span class="property-value" aria-labelledby="grupos-label"><g:link controller="grupo" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.ufuncion}">
				<li class="fieldcontain">
					<span id="ufuncion-label" class="property-label"><g:message code="alumno.ufuncion.label" default="Ufuncion" /></span>
					
						<span class="property-value" aria-labelledby="ufuncion-label"><g:link controller="ufuncion" action="show" id="${alumnoInstance?.ufuncion?.id}">${alumnoInstance?.ufuncion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.utipo}">
				<li class="fieldcontain">
					<span id="utipo-label" class="property-label"><g:message code="alumno.utipo.label" default="Utipo" /></span>
					
						<span class="property-value" aria-labelledby="utipo-label"><g:link controller="utipo" action="show" id="${alumnoInstance?.utipo?.id}">${alumnoInstance?.utipo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.utitulo}">
				<li class="fieldcontain">
					<span id="utitulo-label" class="property-label"><g:message code="alumno.utitulo.label" default="Utitulo" /></span>
					
						<span class="property-value" aria-labelledby="utitulo-label"><g:link controller="utitulo" action="show" id="${alumnoInstance?.utitulo?.id}">${alumnoInstance?.utitulo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${alumnoInstance?.id}" />
					<g:link class="edit" action="edit" id="${alumnoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
