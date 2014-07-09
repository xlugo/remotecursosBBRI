<%@ page import="cursosbbri.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'unisoft', 'error')} required">
	<label for="unisoft">
		<g:message code="instructor.unisoft.label" default="Unisoft" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unisoft" maxlength="45" required="" value="${instructorInstance?.unisoft}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'utitulo', 'error')} required">
	<label for="utitulo">
		<g:message code="instructor.utitulo.label" default="Utitulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utitulo" name="utitulo.id" from="${cursosbbri.Utitulo.list()}" optionKey="id" required="" value="${instructorInstance?.utitulo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="instructor.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" maxlength="45" required="" value="${instructorInstance?.nombres}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'apellidopaterno', 'error')} required">
	<label for="apellidopaterno">
		<g:message code="instructor.apellidopaterno.label" default="Apellidopaterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidopaterno" maxlength="45" required="" value="${instructorInstance?.apellidopaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'apellidomaterno', 'error')} required">
	<label for="apellidomaterno">
		<g:message code="instructor.apellidomaterno.label" default="Apellidomaterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidomaterno" maxlength="45" required="" value="${instructorInstance?.apellidomaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="instructor.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correo" maxlength="45" required="" value="${instructorInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'departamento', 'error')} ">
	<label for="departamento">
		<g:message code="instructor.departamento.label" default="Departamento" />
		
	</label>
	<g:textField name="departamento" maxlength="128" value="${instructorInstance?.departamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="instructor.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" maxlength="128" value="${instructorInstance?.puesto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'oficina', 'error')} ">
	<label for="oficina">
		<g:message code="instructor.oficina.label" default="Oficina" />
		
	</label>
	<g:textField name="oficina" maxlength="45" value="${instructorInstance?.oficina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="instructor.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" maxlength="45" value="${instructorInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'telefonoext', 'error')} ">
	<label for="telefonoext">
		<g:message code="instructor.telefonoext.label" default="Telefonoext" />
		
	</label>
	<g:textField name="telefonoext" maxlength="45" value="${instructorInstance?.telefonoext}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'ufuncion', 'error')} required">
	<label for="ufuncion">
		<g:message code="instructor.ufuncion.label" default="Ufuncion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ufuncion" name="ufuncion.id" from="${cursosbbri.Ufuncion.list()}" optionKey="id" required="" value="${instructorInstance?.ufuncion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'utipo', 'error')} required">
	<label for="utipo">
		<g:message code="instructor.utipo.label" default="Utipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utipo" name="utipo.id" from="${cursosbbri.Utipo.list()}" optionKey="id" required="" value="${instructorInstance?.utipo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'fechacreacion', 'error')} required">
	<label for="fechacreacion">
		<g:message code="instructor.fechacreacion.label" default="Fechacreacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechacreacion" precision="day"  value="${instructorInstance?.fechacreacion}"  />
</div>

