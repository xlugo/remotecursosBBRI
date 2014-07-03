<%@ page import="cursosbbri.Utitulo" %>



<div class="fieldcontain ${hasErrors(bean: utituloInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="utitulo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="45" value="${utituloInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utituloInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="utitulo.alumnos.label" default="Alumnos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utituloInstance?.alumnos?}" var="a">
    <li><g:link controller="alumno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alumno" action="create" params="['utitulo.id': utituloInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alumno.label', default: 'Alumno')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: utituloInstance, field: 'contactos', 'error')} ">
	<label for="contactos">
		<g:message code="utitulo.contactos.label" default="Contactos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utituloInstance?.contactos?}" var="c">
    <li><g:link controller="contacto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contacto" action="create" params="['utitulo.id': utituloInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contacto.label', default: 'Contacto')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: utituloInstance, field: 'instructors', 'error')} ">
	<label for="instructors">
		<g:message code="utitulo.instructors.label" default="Instructors" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utituloInstance?.instructors?}" var="i">
    <li><g:link controller="instructor" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="instructor" action="create" params="['utitulo.id': utituloInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'instructor.label', default: 'Instructor')])}</g:link>
</li>
</ul>

</div>

