<%@ page import="cursosbbri.Salon" %>



<div class="fieldcontain ${hasErrors(bean: salonInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="salon.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="45" required="" value="${salonInstance?.descripcion}"/>
</div>

