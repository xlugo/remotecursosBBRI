package cursosBBRI

class Curso {

	String requisitos
	String notas
	String proposito
	Date fechacreacion
	Academico academico
	Contacto contacto
	Ctitulo ctitulo
	Ctipo ctipo
	Cmodalidad cmodalidad

	static hasMany = [grupos: Grupo,
	                  ufuncions: Ufuncion]
	static belongsTo = [Academico, Cmodalidad, Contacto, Ctipo, Ctitulo]

	static constraints = {
		requisitos maxSize: 128
		notas nullable: true, maxSize: 128
		proposito nullable: true, maxSize: 128
	}
}
