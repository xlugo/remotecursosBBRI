
<%@ page import="cursosbbri.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="reqcurso">lisd</g:link></li>
				
			</ul>
		</div>
		<div id="list-alumno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="unisoft" title="${message(code: 'alumno.unisoft.label', default: 'Unisoft')}" />
					
						<th><g:message code="alumno.utitulo.label" default="Utitulo" /></th>
					
						<g:sortableColumn property="nombres" title="${message(code: 'alumno.nombres.label', default: 'Nombres')}" />
					
						<g:sortableColumn property="apellidopaterno" title="${message(code: 'alumno.apellidopaterno.label', default: 'Apellidopaterno')}" />
					
						<g:sortableColumn property="apellidomaterno" title="${message(code: 'alumno.apellidomaterno.label', default: 'Apellidomaterno')}" />
					
						<g:sortableColumn property="correo" title="${message(code: 'alumno.correo.label', default: 'Correo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alumnoInstanceList}" status="i" var="alumnoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alumnoInstance.id}">${fieldValue(bean: alumnoInstance, field: "unisoft")}</g:link></td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "utitulo")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "nombres")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "apellidopaterno")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "apellidomaterno")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "correo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alumnoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
