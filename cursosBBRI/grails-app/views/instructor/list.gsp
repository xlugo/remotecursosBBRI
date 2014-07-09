
<%@ page import="cursosbbri.Instructor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instructor.label', default: 'Instructor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-instructor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-instructor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="unisoft" title="${message(code: 'instructor.unisoft.label', default: 'Unisoft')}" />
					
						<th><g:message code="instructor.utitulo.label" default="Utitulo" /></th>
					
						<g:sortableColumn property="nombres" title="${message(code: 'instructor.nombres.label', default: 'Nombres')}" />
					
						<g:sortableColumn property="apellidopaterno" title="${message(code: 'instructor.apellidopaterno.label', default: 'Apellidopaterno')}" />
					
						<g:sortableColumn property="apellidomaterno" title="${message(code: 'instructor.apellidomaterno.label', default: 'Apellidomaterno')}" />
					
						<g:sortableColumn property="correo" title="${message(code: 'instructor.correo.label', default: 'Correo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${instructorInstanceList}" status="i" var="instructorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${instructorInstance.id}">${fieldValue(bean: instructorInstance, field: "unisoft")}</g:link></td>
					
						<td>${fieldValue(bean: instructorInstance, field: "utitulo")}</td>
					
						<td>${fieldValue(bean: instructorInstance, field: "nombres")}</td>
					
						<td>${fieldValue(bean: instructorInstance, field: "apellidopaterno")}</td>
					
						<td>${fieldValue(bean: instructorInstance, field: "apellidomaterno")}</td>
					
						<td>${fieldValue(bean: instructorInstance, field: "correo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${instructorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
