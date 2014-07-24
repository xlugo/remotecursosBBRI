<html>
<head>
<meta name="layout" content="solicitud"/>
<title><g:message code="default.solicitud.label" /></title>
</head>
<body>
<div class="titulomensaje">
 <g:message code="default.solicitud.label.step2" />
</div>
 			
 			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
<p>&nbsp;</p>
<div><b>${courseInstance.ctitulo} (${courseInstance.cmodalidad})</b></div>
<div> <g:message code="curso.proposito.label" />: ${courseInstance.proposito} </div>
<div> <g:message code="curso.ctipo.label"/>: ${courseInstance.ctipo} </div>
<div>
 <g:message code="curso.ufuncions.label"/>:
 <g:each in="${ufunctionlist}" var="ufuncions">${ufuncions}
 </g:each> 
</div>
<div> 
<p>&nbsp;</p>
  <p><g:message code="contacto.label"/>:${contactInstance.nombres} ${contactInstance.apellidopaterno} ${contactInstance.apellidomaterno}</p>
    <p><a href="mailto:${contactInstance.correo}">${contactInstance.correo}</a></p>
  <p> <g:message code="contacto.oficina.label" default="Teléfono"/>:${contactInstance.oficina}, <g:message code="contacto.departamento.label" />: ${contactInstance.departamento} </p>
  <p><g:message code="contacto.telefono.label" />:${contactInstance.telefono}, <g:message code="contacto.telefonoext.label" />:${contactInstance.telefonoext}  </p>
 </div>
<div>
<p>&nbsp;</p><p>&nbsp;</p>
<g:form action="inscribe" >
<g:hiddenField name="curso" value="${courseInstance.id}"/>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'unisoft', 'error')} required">
	<label for="unisoft">
		<g:message code="alumno.unisoft.label" default="Unisoft" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unisoft" maxlength="45" required="" />   * <g:message code="default.id.warning.label" />
</div>






<p>&nbsp;</p><p>&nbsp;</p>

 <g:each in="${grouplist}" var="grupo">
 <p class="negrita"><g:radio name="grupo" value="${grupo.id}"/>    
  <div class="negrita"> <g:message code="default.from.label"  /></div> <g:formatDate type="date" style="LONG" date="${grupo.fhorainicio}"/> <g:formatDate type="time" timeStyle="SHORT" date="${grupo.fhorainicio}"/> <div class="negrita">  <g:message code="default.to.label" /></div>  <g:formatDate type="date" style="LONG" date="${grupo.fhorafinal}"/> <g:formatDate type="time" timeStyle="SHORT" date="${grupo.fhorafinal}"/> ( <g:message code="salon.label" /> ${grupo.salon}) , <div class="negrita"><g:message code="instructor.label" /></div> ${grupo.instructor} 
    </br></br></p>
</g:each>
</div>
<g:submitButton name="create" class="save" value="${message(code: 'default.button.signin.label', default: 'Inscribirme')}" />
</g:form>




</body>
</html>