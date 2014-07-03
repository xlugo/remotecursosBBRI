<%@ page import="cursosbbri.Ufuncion" %>



<div class="fieldcontain ${hasErrors(bean: ufuncionInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="ufuncion.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="128" value="${ufuncionInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ufuncionInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="ufuncion.alumnos.label" default="Alumnos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ufuncionInstance?.alumnos?}" var="a">
    <li><g:link controller="alumno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alumno" action="create" params="['ufuncion.id': ufuncionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alumno.label', default: 'Alumno')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: ufuncionInstance, field: 'contactos', 'error')} ">
	<label for="contactos">
		<g:message code="ufuncion.contactos.label" default="Contactos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ufuncionInstance?.contactos?}" var="c">
    <li><g:link controller="contacto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contacto" action="create" params="['ufuncion.id': ufuncionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contacto.label', default: 'Contacto')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: ufuncionInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="ufuncion.cursos.label" default="Cursos" />
		
	</label>
	<g:select name="cursos" from="${cursosbbri.Curso.list()}" multiple="multiple" optionKey="id" size="5" value="${ufuncionInstance?.cursos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ufuncionInstance, field: 'instructors', 'error')} ">
	<label for="instructors">
		<g:message code="ufuncion.instructors.label" default="Instructors" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ufuncionInstance?.instructors?}" var="i">
    <li><g:link controller="instructor" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="instructor" action="create" params="['ufuncion.id': ufuncionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'instructor.label', default: 'Instructor')])}</g:link>
</li>
</ul>

</div>

