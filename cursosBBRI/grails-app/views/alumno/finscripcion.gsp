<%@ page import="cursosbbri.Alumno" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="solicitud"/>
<title>Insert title here</title>
</head>
<body>
<div class="titulomensaje">
 <g:message code="default.solicitud.label.step3" />
</div>
 			
 			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
<p>&nbsp;</p>
<div><b>${courseInstance.ctitulo} (${courseInstance.cmodalidad})</b> - <g:formatDate type="datetime" style="LONG" timeStyle="SHORT" date="${groupInstance.fhorainicio}"/> <div class="negrita">  <g:message code="default.to.label" /></div>  <g:formatDate type="datetime" style="LONG" timeStyle="SHORT" date="${groupInstance.fhorafinal}"/></div>
		<div id="create-alumno" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${alumnoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${alumnoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="saveinscripcion" >
				<g:hiddenField name="grupo" value="${groupInstance.id}" />
				<fieldset class="form">
					<g:render template="solicitudc"/>
				</fieldset>
				<fieldset class="buttons">
				    <g:submitButton name="create" class="save" value="${message(code: 'default.button.sigin.label', default: 'Inscribirme')}" />
				</fieldset>
			</g:form>
		</div>

</body>
</html>