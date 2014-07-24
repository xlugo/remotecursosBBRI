<html>
<head>
<meta name="layout" content="solicitud"/>
<title><g:message code="default.solicitud.label" /></title>
</head>
<body>
<div class="titulomensaje">
 			<g:message code="default.solicitud.label.step1" />
 			</div>
 			
 			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
  <g:form action="ofertagrupos" >  
   <g:each in="${courselist}" var="curso">
   
    <p><g:radio name="curso" value="${curso.id}"/>
    ${curso.ctitulo} (${curso.cmodalidad})
    </p>
   </g:each>   
   	<g:submitButton name="create" class="save" value="${message(code: 'default.button.next.label', default: 'Siguiente')}" />
    </g:form>



</body>
</html>