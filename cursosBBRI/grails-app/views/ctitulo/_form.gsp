<%@ page import="cursosbbri.Ctitulo" %>



<div class="fieldcontain ${hasErrors(bean: ctituloInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="ctitulo.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="128" required="" value="${ctituloInstance?.descripcion}"/>
</div>

