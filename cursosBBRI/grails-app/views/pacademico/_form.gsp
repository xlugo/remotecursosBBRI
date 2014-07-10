<%@ page import="cursosbbri.Pacademico" %>



<div class="fieldcontain ${hasErrors(bean: pacademicoInstance, field: 'ano', 'error')} required">
	<label for="ano">
		<g:message code="pacademico.ano.label" default="Año" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ano" precision="day"  value="${pacademicoInstance?.ano}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pacademicoInstance, field: 'estacionano', 'error')} required">
	<label for="estacionano">
		<g:message code="pacademico.estacionano.label" default="Estación del año" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estacionano" name="estacionano.id" from="${cursosbbri.Estacionano.list()}" optionKey="id" required="" value="${pacademicoInstance?.estacionano?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pacademicoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="pacademico.descripcion.label" default="Descripción" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="128" required="" value="${pacademicoInstance?.descripcion}"/>
</div>

