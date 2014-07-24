<%@ page import="cursosbbri.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'unisoft', 'error')} required">
	<label for="unisoft">
		<g:message code="alumno.unisoft.label" default="Unisoft" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unisoft" maxlength="45" required="" value="${params.unisoft}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'utitulo', 'error')} required">
	<label for="utitulo">
		<g:message code="alumno.utitulo.label" default="Utitulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utitulo" name="utitulo.id" from="${cursosbbri.Utitulo.list()}" optionKey="id" required="" value="${alumnoInstance?.utitulo?.id}" class="many-to-one" readonly="readonly"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="alumno.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" maxlength="45" required="" value="${alumnoInstance?.nombres}" />
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidopaterno', 'error')} required">
	<label for="apellidopaterno">
		<g:message code="alumno.apellidopaterno.label" default="Apellido paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidopaterno" maxlength="45" required="" value="${alumnoInstance?.apellidopaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidomaterno', 'error')} required">
	<label for="apellidomaterno">
		<g:message code="alumno.apellidomaterno.label" default="Apellido materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidomaterno" maxlength="45" required="" value="${alumnoInstance?.apellidomaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="alumno.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correo" maxlength="45" required="" value="${alumnoInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'departamento', 'error')} ">
	<label for="departamento">
		<g:message code="alumno.departamento.label" default="Departamento" />
		
	</label>
	<g:textField name="departamento" maxlength="128" value="${alumnoInstance?.departamento}"/>
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

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fechacreacion', 'error')} required">
	<label for="fechacreacion">
		<g:message code="alumno.fechacreacion.label" default="Fechacreacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechacreacion" precision="day"  value="${alumnoInstance?.fechacreacion}" readonly="readonly" />
</div>

