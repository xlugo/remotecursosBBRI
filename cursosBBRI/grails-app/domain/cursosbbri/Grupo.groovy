package cursosbbri

class Grupo {

	Date fechapropuesta
	Date horainicio
	Date horafinal
	Date fechacreacion
	Date fechainicio
	Curso curso
	Salon salon
	Instructor instructor

	static hasMany = [alumnos: Alumno]
	static belongsTo = [Curso, Instructor, Salon]

	static constraints = {
		fechainicio nullable: true
	}
}
