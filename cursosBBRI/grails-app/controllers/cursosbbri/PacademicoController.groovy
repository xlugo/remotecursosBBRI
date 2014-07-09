package cursosbbri

import org.springframework.dao.DataIntegrityViolationException

class PacademicoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [pacademicoInstanceList: Pacademico.list(params), pacademicoInstanceTotal: Pacademico.count()]
    }

    def create() {
        [pacademicoInstance: new Pacademico(params)]
    }

    def save() {
        def pacademicoInstance = new Pacademico(params)
        if (!pacademicoInstance.save(flush: true)) {
            render(view: "create", model: [pacademicoInstance: pacademicoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'pacademico.label', default: 'Pacademico'), pacademicoInstance.id])
        redirect(action: "show", id: pacademicoInstance.id)
    }

    def show(Long id) {
        def pacademicoInstance = Pacademico.get(id)
        if (!pacademicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pacademico.label', default: 'Pacademico'), id])
            redirect(action: "list")
            return
        }

        [pacademicoInstance: pacademicoInstance]
    }

    def edit(Long id) {
        def pacademicoInstance = Pacademico.get(id)
        if (!pacademicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pacademico.label', default: 'Pacademico'), id])
            redirect(action: "list")
            return
        }

        [pacademicoInstance: pacademicoInstance]
    }

    def update(Long id, Long version) {
        def pacademicoInstance = Pacademico.get(id)
        if (!pacademicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pacademico.label', default: 'Pacademico'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (pacademicoInstance.version > version) {
                pacademicoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pacademico.label', default: 'Pacademico')] as Object[],
                          "Another user has updated this Pacademico while you were editing")
                render(view: "edit", model: [pacademicoInstance: pacademicoInstance])
                return
            }
        }

        pacademicoInstance.properties = params

        if (!pacademicoInstance.save(flush: true)) {
            render(view: "edit", model: [pacademicoInstance: pacademicoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'pacademico.label', default: 'Pacademico'), pacademicoInstance.id])
        redirect(action: "show", id: pacademicoInstance.id)
    }

    def delete(Long id) {
        def pacademicoInstance = Pacademico.get(id)
        if (!pacademicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pacademico.label', default: 'Pacademico'), id])
            redirect(action: "list")
            return
        }

        try {
            pacademicoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'pacademico.label', default: 'Pacademico'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pacademico.label', default: 'Pacademico'), id])
            redirect(action: "show", id: id)
        }
    }
}
