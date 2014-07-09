
<%@ page import="cursosbbri.Pacademico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pacademico.label', default: 'Pacademico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pacademico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pacademico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pacademico">
			
				<g:if test="${pacademicoInstance?.ano}">
				<li class="fieldcontain">
					<span id="ano-label" class="property-label"><g:message code="pacademico.ano.label" default="Ano" /></span>
					
						<span class="property-value" aria-labelledby="ano-label"><g:formatDate date="${pacademicoInstance?.ano}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacademicoInstance?.estacionano}">
				<li class="fieldcontain">
					<span id="estacionano-label" class="property-label"><g:message code="pacademico.estacionano.label" default="Estacionano" /></span>
					
						<span class="property-value" aria-labelledby="estacionano-label"><g:link controller="estacionano" action="show" id="${pacademicoInstance?.estacionano?.id}">${pacademicoInstance?.estacionano?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacademicoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="pacademico.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${pacademicoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacademicoInstance?.cursos}">
				<li class="fieldcontain">
					<span id="cursos-label" class="property-label"><g:message code="pacademico.cursos.label" default="Cursos" /></span>
					
						<g:each in="${pacademicoInstance.cursos}" var="c">
						<span class="property-value" aria-labelledby="cursos-label"><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pacademicoInstance?.id}" />
					<g:link class="edit" action="edit" id="${pacademicoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
