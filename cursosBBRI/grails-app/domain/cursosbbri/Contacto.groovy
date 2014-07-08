package cursosbbri

class Contacto {

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
	Utipo utipo
	Utitulo utitulo
	Ufuncion ufuncion

	static hasMany = [cursos: Curso]
	static belongsTo = [Ufuncion, Utipo, Utitulo]

	static constraints = {
		unisoft maxSize: 45, blank : false, unique:true
		utitulo()
		nombres maxSize: 45, blank: false
		apellidopaterno maxSize: 45, blank: false 
		apellidomaterno maxSize: 45, blank: false
		correo maxSize: 45 , email: true, blank : false
		departamento nullable: true, maxSize: 128
		puesto nullable: true, maxSize: 128
		oficina nullable: true, maxSize: 45
		telefono nullable: true, maxSize: 45
		telefonoext nullable: true, maxSize: 45
		ufuncion()
		utipo()
		// no captura la hora y minutos
		fechacreacion()
		cursos(display:false)
		
	}
	
	String toString(){
		"$nombres  $apellidopaterno"
	}
}
