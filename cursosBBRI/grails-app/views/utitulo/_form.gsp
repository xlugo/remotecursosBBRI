<%@ page import="cursosbbri.Utitulo" %>



<div class="fieldcontain ${hasErrors(bean: utituloInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="utitulo.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="45" required="" value="${utituloInstance?.descripcion}"/>
</div>

