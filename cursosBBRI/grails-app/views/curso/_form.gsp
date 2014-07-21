<%@ page import="cursosbbri.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'pacademico', 'error')} required">
	<label for="pacademico">
		<g:message code="pacademico.label" default="Período académico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pacademico" name="pacademico.id" from="${cursosbbri.Pacademico.list()}" optionKey="id" required="" value="${cursoInstance?.pacademico?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'ctitulo', 'error')} required">
	<label for="ctitulo">
		<g:message code="curso.ctitulo.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ctitulo" name="ctitulo.id" from="${cursosbbri.Ctitulo.list()}" optionKey="id" required="" value="${cursoInstance?.ctitulo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'ctipo', 'error')} required">
	<label for="ctipo">
		<g:message code="curso.ctipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ctipo" name="ctipo.id" from="${cursosbbri.Ctipo.list()}" optionKey="id" required="" value="${cursoInstance?.ctipo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'cmodalidad', 'error')} required">
	<label for="cmodalidad">
		<g:message code="curso.cmodalidad.label" default="Modalidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cmodalidad" name="cmodalidad.id" from="${cursosbbri.Cmodalidad.list()}" optionKey="id" required="" value="${cursoInstance?.cmodalidad?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'ufuncions', 'error')} ">
	<label for="ufuncions">
		<g:message code="curso.ufuncions.label" default="Dirigido a" />
		
	</label>
	<g:select name="ufuncions" from="${cursosbbri.Ufuncion.list()}" multiple="multiple" optionKey="id" size="5" value="${cursoInstance?.ufuncions*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'requisitos', 'error')} ">
	<label for="requisitos">
		<g:message code="curso.requisitos.label" default="Requisitos" />
		
	</label>
	<g:textField name="requisitos" maxlength="128" value="${cursoInstance?.requisitos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'proposito', 'error')} ">
	<label for="proposito">
		<g:message code="curso.proposito.label" default="Propósito" />
		
	</label>
	<g:textField name="proposito" maxlength="128" value="${cursoInstance?.proposito}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'notas', 'error')} ">
	<label for="notas">
		<g:message code="curso.notas.label" default="Notas" />
		
	</label>
	<g:textField name="notas" maxlength="128" value="${cursoInstance?.notas}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'contacto', 'error')} required">
	<label for="contacto">
		<g:message code="contacto.label" default="Contacto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="contacto" name="contacto.id" from="${cursosbbri.Contacto.list()}" optionKey="id" required="" value="${cursoInstance?.contacto?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'fechacreacion', 'error')} required">
	<label for="fechacreacion">
		<g:message code="curso.fechacreacion.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechacreacion" precision="day"  value="${cursoInstance?.fechacreacion}"  />
</div>

