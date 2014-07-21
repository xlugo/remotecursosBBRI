package cursosbbri

import org.springframework.dao.DataIntegrityViolationException

class AlumnoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [alumnoInstanceList: Alumno.list(params), alumnoInstanceTotal: Alumno.count()]
    }

    def create() {
        [alumnoInstance: new Alumno(params)]
    }
	


    def save() {
        def alumnoInstance = new Alumno(params)
        if (!alumnoInstance.save(flush: true)) {
            render(view: "create", model: [alumnoInstance: alumnoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'alumno.label', default: 'Alumno'), alumnoInstance.id])
        redirect(action: "show", id: alumnoInstance.id)
    }

    def show(Long id) {
        def alumnoInstance = Alumno.get(id)
        if (!alumnoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumno.label', default: 'Alumno'), id])
            redirect(action: "list")
            return
        }

        [alumnoInstance: alumnoInstance]
    }
	
	def inscripcion(){
		
		[alumnoInstance: new Alumno(params)]
		
		
		/*flash.message = params.cid
		flash.args = ["The Stand"]
		flash.default = "done !"
		*/
	}
	
	def reqcurso(){
	//[alumnoInstance: new Alumno(params)]
    // solo se rendera la reqcurso.gsp
	
	
}
	
	def fsolicitud(String unisoft){
		/*def courseInstance = Curso.findById("2")
		def contactInstance = Contacto.findById(courseInstance.contacto.id)
		def ufunctionlist = courseInstance.ufuncions.findAll()
		render "Curso : " + courseInstance.ctitulo  
		render ", proposito : " + courseInstance.proposito
		render ", Tipo: " + courseInstance.ctipo
		render ", Modalidad : " + courseInstance.cmodalidad
		render ", Contacto : " + contactInstance.nombres + " " + contactInstance.apellidopaterno  + " " + contactInstance.apellidomaterno + " correo " + contactInstance.correo + " oficina " + contactInstance.oficina +  " depto " + contactInstance.departamento + " Tel ext. " + contactInstance.telefonoext
		render ", Dirigido a: " 		
		ufunctionlist.each {render it}
		*/
		
		/*
		def studentInstance = Alumno.findById("2")
		def groupInstance = Grupo.findById("2")
		studentInstance.addToGrupos(groupInstance)
		*/
		
		
		//def grupoInstance = Grupo.findById(unisoft)
		//def gl = grupoInstance.alumnos.findAll()
		//def alumnoInstance = Alumno.findByUnisoft(unisoft)
		//def gl = alumnoInstance.grupos.findAll();
		//def grupoInstance = Grupo.findById(3)
		//def grupoIntancelist = Grupo.findAllByUnisoft("12345")
		//def alumnoInstance =  AlumnoG.executeQuery("SELECT A FROM Alumno A WHERE A.id = 1")
		
		/*
		if(!alumnoInstance){
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumno.label', default: 'Alumno'), unisoft])
			redirect(action: "inscripcion")		
			return
		}
		[alumnoInstance: alumnoInstance]
		*/
		
		//if(!alumnoInstance){
		//if(!grupoInstance){
			//render "null"
		//}else{
		//render grupoInstance.fhorainicio
			//render alumnoInstance.correo + "\n"
			//render cursosbbri.Contacto.count() + "\t"
			//render grupoInstance.fhorainicio
			//gl.each {render it}
		//}
	}

    def edit(Long id) {
        def alumnoInstance = Alumno.get(id)
        if (!alumnoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumno.label', default: 'Alumno'), id])
            redirect(action: "list")
            return
        }

        [alumnoInstance: alumnoInstance]
    }
	
	

    def update(Long id, Long version) {
        def alumnoInstance = Alumno.get(id)
        if (!alumnoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumno.label', default: 'Alumno'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (alumnoInstance.version > version) {
                alumnoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'alumno.label', default: 'Alumno')] as Object[],
                          "Another user has updated this Alumno while you were editing")
                render(view: "edit", model: [alumnoInstance: alumnoInstance])
                return
            }
        }

        alumnoInstance.properties = params

        if (!alumnoInstance.save(flush: true)) {
            render(view: "edit", model: [alumnoInstance: alumnoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'alumno.label', default: 'Alumno'), alumnoInstance.id])
        redirect(action: "show", id: alumnoInstance.id)
    }

    def delete(Long id) {
        def alumnoInstance = Alumno.get(id)
        if (!alumnoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumno.label', default: 'Alumno'), id])
            redirect(action: "list")
            return
        }

        try {
            alumnoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'alumno.label', default: 'Alumno'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'alumno.label', default: 'Alumno'), id])
            redirect(action: "show", id: id)
        }
    }
}
