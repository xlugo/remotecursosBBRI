
<%@ page import="cursosbbri.Contacto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contacto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contacto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contacto">
			
				<g:if test="${contactoInstance?.unisoft}">
				<li class="fieldcontain">
					<span id="unisoft-label" class="property-label"><g:message code="contacto.unisoft.label" default="Unisoft" /></span>
					
						<span class="property-value" aria-labelledby="unisoft-label"><g:fieldValue bean="${contactoInstance}" field="unisoft"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.utitulo}">
				<li class="fieldcontain">
					<span id="utitulo-label" class="property-label"><g:message code="contacto.utitulo.label" default="Utitulo" /></span>
					
						<span class="property-value" aria-labelledby="utitulo-label"><g:link controller="utitulo" action="show" id="${contactoInstance?.utitulo?.id}">${contactoInstance?.utitulo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="contacto.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${contactoInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.apellidopaterno}">
				<li class="fieldcontain">
					<span id="apellidopaterno-label" class="property-label"><g:message code="contacto.apellidopaterno.label" default="Apellidopaterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidopaterno-label"><g:fieldValue bean="${contactoInstance}" field="apellidopaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.apellidomaterno}">
				<li class="fieldcontain">
					<span id="apellidomaterno-label" class="property-label"><g:message code="contacto.apellidomaterno.label" default="Apellidomaterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidomaterno-label"><g:fieldValue bean="${contactoInstance}" field="apellidomaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="contacto.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${contactoInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.departamento}">
				<li class="fieldcontain">
					<span id="departamento-label" class="property-label"><g:message code="contacto.departamento.label" default="Departamento" /></span>
					
						<span class="property-value" aria-labelledby="departamento-label"><g:fieldValue bean="${contactoInstance}" field="departamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.puesto}">
				<li class="fieldcontain">
					<span id="puesto-label" class="property-label"><g:message code="contacto.puesto.label" default="Puesto" /></span>
					
						<span class="property-value" aria-labelledby="puesto-label"><g:fieldValue bean="${contactoInstance}" field="puesto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.oficina}">
				<li class="fieldcontain">
					<span id="oficina-label" class="property-label"><g:message code="contacto.oficina.label" default="Oficina" /></span>
					
						<span class="property-value" aria-labelledby="oficina-label"><g:fieldValue bean="${contactoInstance}" field="oficina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="contacto.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${contactoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.telefonoext}">
				<li class="fieldcontain">
					<span id="telefonoext-label" class="property-label"><g:message code="contacto.telefonoext.label" default="Telefonoext" /></span>
					
						<span class="property-value" aria-labelledby="telefonoext-label"><g:fieldValue bean="${contactoInstance}" field="telefonoext"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.ufuncion}">
				<li class="fieldcontain">
					<span id="ufuncion-label" class="property-label"><g:message code="contacto.ufuncion.label" default="Ufuncion" /></span>
					
						<span class="property-value" aria-labelledby="ufuncion-label"><g:link controller="ufuncion" action="show" id="${contactoInstance?.ufuncion?.id}">${contactoInstance?.ufuncion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.utipo}">
				<li class="fieldcontain">
					<span id="utipo-label" class="property-label"><g:message code="contacto.utipo.label" default="Utipo" /></span>
					
						<span class="property-value" aria-labelledby="utipo-label"><g:link controller="utipo" action="show" id="${contactoInstance?.utipo?.id}">${contactoInstance?.utipo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.fechacreacion}">
				<li class="fieldcontain">
					<span id="fechacreacion-label" class="property-label"><g:message code="contacto.fechacreacion.label" default="Fechacreacion" /></span>
					
						<span class="property-value" aria-labelledby="fechacreacion-label"><g:formatDate date="${contactoInstance?.fechacreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoInstance?.cursos}">
				<li class="fieldcontain">
					<span id="cursos-label" class="property-label"><g:message code="contacto.cursos.label" default="Cursos" /></span>
					
						<g:each in="${contactoInstance.cursos}" var="c">
						<span class="property-value" aria-labelledby="cursos-label"><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contactoInstance?.id}" />
					<g:link class="edit" action="edit" id="${contactoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
