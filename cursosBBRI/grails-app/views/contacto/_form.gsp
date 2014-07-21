<%@ page import="cursosbbri.Contacto" %>



<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'unisoft', 'error')} required">
	<label for="unisoft">
		<g:message code="contacto.unisoft.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unisoft" maxlength="45" required="" value="${contactoInstance?.unisoft}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'utitulo', 'error')} required">
	<label for="utitulo">
		<g:message code="utitulo.label" default="Título académico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utitulo" name="utitulo.id" from="${cursosbbri.Utitulo.list()}" optionKey="id" required="" value="${contactoInstance?.utitulo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="contacto.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" maxlength="45" required="" value="${contactoInstance?.nombres}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'apellidopaterno', 'error')} required">
	<label for="apellidopaterno">
		<g:message code="contacto.apellidopaterno.label" default="Apellido paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidopaterno" maxlength="45" required="" value="${contactoInstance?.apellidopaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'apellidomaterno', 'error')} required">
	<label for="apellidomaterno">
		<g:message code="contacto.apellidomaterno.label" default="Apellido materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidomaterno" maxlength="45" required="" value="${contactoInstance?.apellidomaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="contacto.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correo" maxlength="45" required="" value="${contactoInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'departamento', 'error')} ">
	<label for="departamento">
		<g:message code="contacto.departamento.label" default="Departamento" />
		
	</label>
	<g:textField name="departamento" maxlength="128" value="${contactoInstance?.departamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="contacto.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" maxlength="128" value="${contactoInstance?.puesto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'oficina', 'error')} ">
	<label for="oficina">
		<g:message code="contacto.oficina.label" default="Oficina" />
		
	</label>
	<g:textField name="oficina" maxlength="45" value="${contactoInstance?.oficina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="contacto.telefono.label" default="Teléfono" />
		
	</label>
	<g:textField name="telefono" maxlength="45" value="${contactoInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'telefonoext', 'error')} ">
	<label for="telefonoext">
		<g:message code="contacto.telefonoext.label" default="Número de extensión" />
		
	</label>
	<g:textField name="telefonoext" maxlength="45" value="${contactoInstance?.telefonoext}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'ufuncion', 'error')} required">
	<label for="ufuncion">
		<g:message code="ufuncion.label" default="Categorización" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ufuncion" name="ufuncion.id" from="${cursosbbri.Ufuncion.list()}" optionKey="id" required="" value="${contactoInstance?.ufuncion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'utipo', 'error')} required">
	<label for="utipo">
		<g:message code="utipo.label" default="Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utipo" name="utipo.id" from="${cursosbbri.Utipo.list()}" optionKey="id" required="" value="${contactoInstance?.utipo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'fechacreacion', 'error')} required">
	<label for="fechacreacion">
		<g:message code="contacto.fechacreacion.label" default="Fechacreacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechacreacion" precision="day"  value="${contactoInstance?.fechacreacion}"  />
</div>

