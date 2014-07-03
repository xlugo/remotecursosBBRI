<%@ page import="cursosbbri.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'unisoft', 'error')} ">
	<label for="unisoft">
		<g:message code="alumno.unisoft.label" default="Unisoft" />
		
	</label>
	<g:textField name="unisoft" maxlength="45" value="${alumnoInstance?.unisoft}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombres', 'error')} ">
	<label for="nombres">
		<g:message code="alumno.nombres.label" default="Nombres" />
		
	</label>
	<g:textField name="nombres" maxlength="45" value="${alumnoInstance?.nombres}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidopaterno', 'error')} ">
	<label for="apellidopaterno">
		<g:message code="alumno.apellidopaterno.label" default="Apellidopaterno" />
		
	</label>
	<g:textField name="apellidopaterno" maxlength="45" value="${alumnoInstance?.apellidopaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidomaterno', 'error')} ">
	<label for="apellidomaterno">
		<g:message code="alumno.apellidomaterno.label" default="Apellidomaterno" />
		
	</label>
	<g:textField name="apellidomaterno" maxlength="45" value="${alumnoInstance?.apellidomaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="alumno.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" maxlength="45" value="${alumnoInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'departamento', 'error')} ">
	<label for="departamento">
		<g:message code="alumno.departamento.label" default="Departamento" />
		
	</label>
	<g:textField name="departamento" maxlength="128" value="${alumnoInstance?.departamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="alumno.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" maxlength="128" value="${alumnoInstance?.puesto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'oficina', 'error')} ">
	<label for="oficina">
		<g:message code="alumno.oficina.label" default="Oficina" />
		
	</label>
	<g:textField name="oficina" maxlength="45" value="${alumnoInstance?.oficina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="alumno.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" maxlength="45" value="${alumnoInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'telefonoext', 'error')} ">
	<label for="telefonoext">
		<g:message code="alumno.telefonoext.label" default="Telefonoext" />
		
	</label>
	<g:textField name="telefonoext" maxlength="45" value="${alumnoInstance?.telefonoext}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fechacreacion', 'error')} required">
	<label for="fechacreacion">
		<g:message code="alumno.fechacreacion.label" default="Fechacreacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechacreacion" precision="day"  value="${alumnoInstance?.fechacreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fechamodificacion', 'error')} required">
	<label for="fechamodificacion">
		<g:message code="alumno.fechamodificacion.label" default="Fechamodificacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechamodificacion" precision="day"  value="${alumnoInstance?.fechamodificacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'grupos', 'error')} ">
	<label for="grupos">
		<g:message code="alumno.grupos.label" default="Grupos" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'ufuncion', 'error')} required">
	<label for="ufuncion">
		<g:message code="alumno.ufuncion.label" default="Ufuncion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ufuncion" name="ufuncion.id" from="${cursosbbri.Ufuncion.list()}" optionKey="id" required="" value="${alumnoInstance?.ufuncion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'utipo', 'error')} required">
	<label for="utipo">
		<g:message code="alumno.utipo.label" default="Utipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utipo" name="utipo.id" from="${cursosbbri.Utipo.list()}" optionKey="id" required="" value="${alumnoInstance?.utipo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'utitulo', 'error')} required">
	<label for="utitulo">
		<g:message code="alumno.utitulo.label" default="Utitulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utitulo" name="utitulo.id" from="${cursosbbri.Utitulo.list()}" optionKey="id" required="" value="${alumnoInstance?.utitulo?.id}" class="many-to-one"/>
</div>

