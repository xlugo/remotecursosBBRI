<%@ page import="cursosbbri.Estacionano" %>



<div class="fieldcontain ${hasErrors(bean: estacionanoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="estacionano.descripcion.label" default="Descripción" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="45" required="" value="${estacionanoInstance?.descripcion}"/>
</div>

