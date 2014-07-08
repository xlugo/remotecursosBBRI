package cursosbbri

class Curso {

	String requisitos
	String notas
	String proposito
	Date fechacreacion
	Contacto contacto
	Ctitulo ctitulo
	Ctipo ctipo
	Pacademico pacademico
	Cmodalidad cmodalidad

	static hasMany = [grupos: Grupo,
	                  ufuncions: Ufuncion]
	static belongsTo = [Cmodalidad, Contacto, Ctipo, Ctitulo, Pacademico]

	static constraints = {
		pacademico()
		ctitulo()
		ctipo()
		cmodalidad()
		ufuncions()
		requisitos maxSize: 128
		proposito nullable: true, maxSize: 128
		notas nullable: true, maxSize: 128
		contacto()
		fechacreacion()
		grupos(display:false)
	}
	
	String toString(){
		"$ctitulo $pacademico"
		}
}
