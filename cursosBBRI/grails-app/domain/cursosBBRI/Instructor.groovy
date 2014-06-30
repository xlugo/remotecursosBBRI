package cursosBBRI

class Instructor {

	String unisoft
	String nombres
	String apellidopaterno
	String apellidomaterno
	String correo
	String departamento
	String puesto
	String oficina
	String telefono
	String telefonoext
	Date fechacreacion
	Date fechamodificacion
	Utipo utipo
	Utitulo utitulo
	Ufuncion ufuncion

	static hasMany = [grupos: Grupo]
	static belongsTo = [Ufuncion, Utipo, Utitulo]

	static constraints = {
		unisoft maxSize: 45
		nombres maxSize: 45
		apellidopaterno maxSize: 45
		apellidomaterno maxSize: 45
		correo maxSize: 45
		departamento nullable: true, maxSize: 128
		puesto nullable: true, maxSize: 128
		oficina nullable: true, maxSize: 45
		telefono nullable: true, maxSize: 45
		telefonoext nullable: true, maxSize: 45
	}
}
