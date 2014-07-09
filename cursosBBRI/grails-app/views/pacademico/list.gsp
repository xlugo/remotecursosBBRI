
<%@ page import="cursosbbri.Pacademico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pacademico.label', default: 'Pacademico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pacademico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pacademico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="ano" title="${message(code: 'pacademico.ano.label', default: 'Ano')}" />
					
						<th><g:message code="pacademico.estacionano.label" default="Estacionano" /></th>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'pacademico.descripcion.label', default: 'Descripcion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pacademicoInstanceList}" status="i" var="pacademicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pacademicoInstance.id}">${fieldValue(bean: pacademicoInstance, field: "ano")}</g:link></td>
					
						<td>${fieldValue(bean: pacademicoInstance, field: "estacionano")}</td>
					
						<td>${fieldValue(bean: pacademicoInstance, field: "descripcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pacademicoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
