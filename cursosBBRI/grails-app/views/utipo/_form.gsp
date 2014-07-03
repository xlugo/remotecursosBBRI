<%@ page import="cursosbbri.Utipo" %>



<div class="fieldcontain ${hasErrors(bean: utipoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="utipo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="128" value="${utipoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utipoInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="utipo.alumnos.label" default="Alumnos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utipoInstance?.alumnos?}" var="a">
    <li><g:link controller="alumno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alumno" action="create" params="['utipo.id': utipoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alumno.label', default: 'Alumno')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: utipoInstance, field: 'contactos', 'error')} ">
	<label for="contactos">
		<g:message code="utipo.contactos.label" default="Contactos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utipoInstance?.contactos?}" var="c">
    <li><g:link controller="contacto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contacto" action="create" params="['utipo.id': utipoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contacto.label', default: 'Contacto')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: utipoInstance, field: 'instructors', 'error')} ">
	<label for="instructors">
		<g:message code="utipo.instructors.label" default="Instructors" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utipoInstance?.instructors?}" var="i">
    <li><g:link controller="instructor" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="instructor" action="create" params="['utipo.id': utipoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'instructor.label', default: 'Instructor')])}</g:link>
</li>
</ul>

</div>

