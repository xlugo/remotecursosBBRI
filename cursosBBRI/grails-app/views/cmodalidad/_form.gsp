<%@ page import="cursosbbri.Cmodalidad" %>



<div class="fieldcontain ${hasErrors(bean: cmodalidadInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="cmodalidad.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="128" required="" value="${cmodalidadInstance?.descripcion}"/>
</div>

