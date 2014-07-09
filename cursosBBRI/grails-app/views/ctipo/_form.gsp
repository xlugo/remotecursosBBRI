<%@ page import="cursosbbri.Ctipo" %>



<div class="fieldcontain ${hasErrors(bean: ctipoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="ctipo.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="128" required="" value="${ctipoInstance?.descripcion}"/>
</div>

