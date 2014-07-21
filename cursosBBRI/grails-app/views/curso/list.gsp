
<%@ page import="cursosbbri.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-curso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="pacademico.label" default="Pacademico" /></th>
					
						<th><g:message code="curso.ctitulo.label" default="Ctitulo" /></th>
					
						<th><g:message code="curso.ctipo.label" default="Ctipo" /></th>
					
						<th><g:message code="curso.cmodalidad.label" default="Cmodalidad" /></th>
					
						<g:sortableColumn property="requisitos" title="${message(code: 'curso.requisitos.label', default: 'Requisitos')}" />
					
						<g:sortableColumn property="proposito" title="${message(code: 'curso.proposito.label', default: 'Proposito')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "pacademico")}</g:link></td>
					
						<td>${fieldValue(bean: cursoInstance, field: "ctitulo")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "ctipo")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "cmodalidad")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "requisitos")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "proposito")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cursoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
