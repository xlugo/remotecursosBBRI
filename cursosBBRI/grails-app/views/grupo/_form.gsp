<%@ page import="cursosbbri.Grupo" %>



<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="grupo.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${cursosbbri.Curso.list()}" optionKey="id" required="" value="${grupoInstance?.curso?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'salon', 'error')} required">
	<label for="salon">
		<g:message code="grupo.salon.label" default="Salon" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="salon" name="salon.id" from="${cursosbbri.Salon.list()}" optionKey="id" required="" value="${grupoInstance?.salon?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'fhorainicio', 'error')} required">
	<label for="fhorainicio">
		<g:message code="grupo.fhorainicio.label" default="Fhorainicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fhorainicio" precision="day"  value="${grupoInstance?.fhorainicio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'fhorafinal', 'error')} required">
	<label for="fhorafinal">
		<g:message code="grupo.fhorafinal.label" default="Fhorafinal" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fhorafinal" precision="day"  value="${grupoInstance?.fhorafinal}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'fechaapertura', 'error')} ">
	<label for="fechaapertura">
		<g:message code="grupo.fechaapertura.label" default="Fechaapertura" />
		
	</label>
	<g:datePicker name="fechaapertura" precision="day"  value="${grupoInstance?.fechaapertura}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'fechacreacion', 'error')} required">
	<label for="fechacreacion">
		<g:message code="grupo.fechacreacion.label" default="Fechacreacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechacreacion" precision="day"  value="${grupoInstance?.fechacreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'instructor', 'error')} required">
	<label for="instructor">
		<g:message code="grupo.instructor.label" default="Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="instructor" name="instructor.id" from="${cursosbbri.Instructor.list()}" optionKey="id" required="" value="${grupoInstance?.instructor?.id}" class="many-to-one"/>
</div>

