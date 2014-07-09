package cursosbbri

import org.springframework.dao.DataIntegrityViolationException

class EstacionanoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [estacionanoInstanceList: Estacionano.list(params), estacionanoInstanceTotal: Estacionano.count()]
    }

    def create() {
        [estacionanoInstance: new Estacionano(params)]
    }

    def save() {
        def estacionanoInstance = new Estacionano(params)
        if (!estacionanoInstance.save(flush: true)) {
            render(view: "create", model: [estacionanoInstance: estacionanoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'estacionano.label', default: 'Estacionano'), estacionanoInstance.id])
        redirect(action: "show", id: estacionanoInstance.id)
    }

    def show(Long id) {
        def estacionanoInstance = Estacionano.get(id)
        if (!estacionanoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estacionano.label', default: 'Estacionano'), id])
            redirect(action: "list")
            return
        }

        [estacionanoInstance: estacionanoInstance]
    }

    def edit(Long id) {
        def estacionanoInstance = Estacionano.get(id)
        if (!estacionanoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estacionano.label', default: 'Estacionano'), id])
            redirect(action: "list")
            return
        }

        [estacionanoInstance: estacionanoInstance]
    }

    def update(Long id, Long version) {
        def estacionanoInstance = Estacionano.get(id)
        if (!estacionanoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estacionano.label', default: 'Estacionano'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (estacionanoInstance.version > version) {
                estacionanoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'estacionano.label', default: 'Estacionano')] as Object[],
                          "Another user has updated this Estacionano while you were editing")
                render(view: "edit", model: [estacionanoInstance: estacionanoInstance])
                return
            }
        }

        estacionanoInstance.properties = params

        if (!estacionanoInstance.save(flush: true)) {
            render(view: "edit", model: [estacionanoInstance: estacionanoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'estacionano.label', default: 'Estacionano'), estacionanoInstance.id])
        redirect(action: "show", id: estacionanoInstance.id)
    }

    def delete(Long id) {
        def estacionanoInstance = Estacionano.get(id)
        if (!estacionanoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estacionano.label', default: 'Estacionano'), id])
            redirect(action: "list")
            return
        }

        try {
            estacionanoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'estacionano.label', default: 'Estacionano'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'estacionano.label', default: 'Estacionano'), id])
            redirect(action: "show", id: id)
        }
    }
}
