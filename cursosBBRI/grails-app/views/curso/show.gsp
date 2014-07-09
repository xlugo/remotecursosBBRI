
<%@ page import="cursosbbri.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curso">
			
				<g:if test="${cursoInstance?.pacademico}">
				<li class="fieldcontain">
					<span id="pacademico-label" class="property-label"><g:message code="curso.pacademico.label" default="Pacademico" /></span>
					
						<span class="property-value" aria-labelledby="pacademico-label"><g:link controller="pacademico" action="show" id="${cursoInstance?.pacademico?.id}">${cursoInstance?.pacademico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.ctitulo}">
				<li class="fieldcontain">
					<span id="ctitulo-label" class="property-label"><g:message code="curso.ctitulo.label" default="Ctitulo" /></span>
					
						<span class="property-value" aria-labelledby="ctitulo-label"><g:link controller="ctitulo" action="show" id="${cursoInstance?.ctitulo?.id}">${cursoInstance?.ctitulo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.ctipo}">
				<li class="fieldcontain">
					<span id="ctipo-label" class="property-label"><g:message code="curso.ctipo.label" default="Ctipo" /></span>
					
						<span class="property-value" aria-labelledby="ctipo-label"><g:link controller="ctipo" action="show" id="${cursoInstance?.ctipo?.id}">${cursoInstance?.ctipo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.cmodalidad}">
				<li class="fieldcontain">
					<span id="cmodalidad-label" class="property-label"><g:message code="curso.cmodalidad.label" default="Cmodalidad" /></span>
					
						<span class="property-value" aria-labelledby="cmodalidad-label"><g:link controller="cmodalidad" action="show" id="${cursoInstance?.cmodalidad?.id}">${cursoInstance?.cmodalidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.ufuncions}">
				<li class="fieldcontain">
					<span id="ufuncions-label" class="property-label"><g:message code="curso.ufuncions.label" default="Ufuncions" /></span>
					
						<g:each in="${cursoInstance.ufuncions}" var="u">
						<span class="property-value" aria-labelledby="ufuncions-label"><g:link controller="ufuncion" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.requisitos}">
				<li class="fieldcontain">
					<span id="requisitos-label" class="property-label"><g:message code="curso.requisitos.label" default="Requisitos" /></span>
					
						<span class="property-value" aria-labelledby="requisitos-label"><g:fieldValue bean="${cursoInstance}" field="requisitos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.proposito}">
				<li class="fieldcontain">
					<span id="proposito-label" class="property-label"><g:message code="curso.proposito.label" default="Proposito" /></span>
					
						<span class="property-value" aria-labelledby="proposito-label"><g:fieldValue bean="${cursoInstance}" field="proposito"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.notas}">
				<li class="fieldcontain">
					<span id="notas-label" class="property-label"><g:message code="curso.notas.label" default="Notas" /></span>
					
						<span class="property-value" aria-labelledby="notas-label"><g:fieldValue bean="${cursoInstance}" field="notas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.contacto}">
				<li class="fieldcontain">
					<span id="contacto-label" class="property-label"><g:message code="curso.contacto.label" default="Contacto" /></span>
					
						<span class="property-value" aria-labelledby="contacto-label"><g:link controller="contacto" action="show" id="${cursoInstance?.contacto?.id}">${cursoInstance?.contacto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.fechacreacion}">
				<li class="fieldcontain">
					<span id="fechacreacion-label" class="property-label"><g:message code="curso.fechacreacion.label" default="Fechacreacion" /></span>
					
						<span class="property-value" aria-labelledby="fechacreacion-label"><g:formatDate date="${cursoInstance?.fechacreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.grupos}">
				<li class="fieldcontain">
					<span id="grupos-label" class="property-label"><g:message code="curso.grupos.label" default="Grupos" /></span>
					
						<g:each in="${cursoInstance.grupos}" var="g">
						<span class="property-value" aria-labelledby="grupos-label"><g:link controller="grupo" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cursoInstance?.id}" />
					<g:link class="edit" action="edit" id="${cursoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
