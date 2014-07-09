
<%@ page import="cursosbbri.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-grupo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-grupo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="grupo.curso.label" default="Curso" /></th>
					
						<th><g:message code="grupo.salon.label" default="Salon" /></th>
					
						<g:sortableColumn property="fhorainicio" title="${message(code: 'grupo.fhorainicio.label', default: 'Fhorainicio')}" />
					
						<g:sortableColumn property="fhorafinal" title="${message(code: 'grupo.fhorafinal.label', default: 'Fhorafinal')}" />
					
						<g:sortableColumn property="fechaapertura" title="${message(code: 'grupo.fechaapertura.label', default: 'Fechaapertura')}" />
					
						<g:sortableColumn property="fechacreacion" title="${message(code: 'grupo.fechacreacion.label', default: 'Fechacreacion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${grupoInstanceList}" status="i" var="grupoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${grupoInstance.id}">${fieldValue(bean: grupoInstance, field: "curso")}</g:link></td>
					
						<td>${fieldValue(bean: grupoInstance, field: "salon")}</td>
					
						<td><g:formatDate date="${grupoInstance.fhorainicio}" /></td>
					
						<td><g:formatDate date="${grupoInstance.fhorafinal}" /></td>
					
						<td><g:formatDate date="${grupoInstance.fechaapertura}" /></td>
					
						<td><g:formatDate date="${grupoInstance.fechacreacion}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${grupoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
