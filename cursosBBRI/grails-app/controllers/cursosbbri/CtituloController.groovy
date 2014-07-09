package cursosbbri

import org.springframework.dao.DataIntegrityViolationException

class CtituloController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ctituloInstanceList: Ctitulo.list(params), ctituloInstanceTotal: Ctitulo.count()]
    }

    def create() {
        [ctituloInstance: new Ctitulo(params)]
    }

    def save() {
        def ctituloInstance = new Ctitulo(params)
        if (!ctituloInstance.save(flush: true)) {
            render(view: "create", model: [ctituloInstance: ctituloInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ctitulo.label', default: 'Ctitulo'), ctituloInstance.id])
        redirect(action: "show", id: ctituloInstance.id)
    }

    def show(Long id) {
        def ctituloInstance = Ctitulo.get(id)
        if (!ctituloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ctitulo.label', default: 'Ctitulo'), id])
            redirect(action: "list")
            return
        }

        [ctituloInstance: ctituloInstance]
    }

    def edit(Long id) {
        def ctituloInstance = Ctitulo.get(id)
        if (!ctituloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ctitulo.label', default: 'Ctitulo'), id])
            redirect(action: "list")
            return
        }

        [ctituloInstance: ctituloInstance]
    }

    def update(Long id, Long version) {
        def ctituloInstance = Ctitulo.get(id)
        if (!ctituloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ctitulo.label', default: 'Ctitulo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ctituloInstance.version > version) {
                ctituloInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ctitulo.label', default: 'Ctitulo')] as Object[],
                          "Another user has updated this Ctitulo while you were editing")
                render(view: "edit", model: [ctituloInstance: ctituloInstance])
                return
            }
        }

        ctituloInstance.properties = params

        if (!ctituloInstance.save(flush: true)) {
            render(view: "edit", model: [ctituloInstance: ctituloInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ctitulo.label', default: 'Ctitulo'), ctituloInstance.id])
        redirect(action: "show", id: ctituloInstance.id)
    }

    def delete(Long id) {
        def ctituloInstance = Ctitulo.get(id)
        if (!ctituloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ctitulo.label', default: 'Ctitulo'), id])
            redirect(action: "list")
            return
        }

        try {
            ctituloInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ctitulo.label', default: 'Ctitulo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ctitulo.label', default: 'Ctitulo'), id])
            redirect(action: "show", id: id)
        }
    }
}
