<%@ page import="cursosbbri.Ufuncion" %>



<div class="fieldcontain ${hasErrors(bean: ufuncionInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="ufuncion.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="128" required="" value="${ufuncionInstance?.descripcion}"/>
</div>

