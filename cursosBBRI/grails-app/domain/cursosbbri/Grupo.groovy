package cursosbbri

class Grupo {

	Date fhorainicio
	Date fhorafinal
	Date fechaapertura
	Date fechacreacion
	Curso curso
	Salon salon
	Instructor instructor

	static hasMany = [alumnos: Alumno]
	static belongsTo = [Alumno, Curso, Instructor, Salon]

	static constraints = {
		fechaapertura nullable: true
	}
	
	String toString(){
		fhorainicio
	}
}
