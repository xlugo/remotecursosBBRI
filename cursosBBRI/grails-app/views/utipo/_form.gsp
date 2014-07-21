<%@ page import="cursosbbri.Utipo" %>



<div class="fieldcontain ${hasErrors(bean: utipoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="utipo.descripcion.label" default="Descripción" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="128" required="" value="${utipoInstance?.descripcion}"/>
</div>

