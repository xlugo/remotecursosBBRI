package cursosbbri

import org.springframework.dao.DataIntegrityViolationException

class UtipoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [utipoInstanceList: Utipo.list(params), utipoInstanceTotal: Utipo.count()]
    }

    def create() {
        [utipoInstance: new Utipo(params)]
    }

    def save() {
        def utipoInstance = new Utipo(params)
        if (!utipoInstance.save(flush: true)) {
            render(view: "create", model: [utipoInstance: utipoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'utipo.label', default: 'Utipo'), utipoInstance.id])
        redirect(action: "show", id: utipoInstance.id)
    }

    def show(Long id) {
        def utipoInstance = Utipo.get(id)
        if (!utipoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utipo.label', default: 'Utipo'), id])
            redirect(action: "list")
            return
        }

        [utipoInstance: utipoInstance]
    }

    def edit(Long id) {
        def utipoInstance = Utipo.get(id)
        if (!utipoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utipo.label', default: 'Utipo'), id])
            redirect(action: "list")
            return
        }

        [utipoInstance: utipoInstance]
    }

    def update(Long id, Long version) {
        def utipoInstance = Utipo.get(id)
        if (!utipoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utipo.label', default: 'Utipo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (utipoInstance.version > version) {
                utipoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'utipo.label', default: 'Utipo')] as Object[],
                          "Another user has updated this Utipo while you were editing")
                render(view: "edit", model: [utipoInstance: utipoInstance])
                return
            }
        }

        utipoInstance.properties = params

        if (!utipoInstance.save(flush: true)) {
            render(view: "edit", model: [utipoInstance: utipoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'utipo.label', default: 'Utipo'), utipoInstance.id])
        redirect(action: "show", id: utipoInstance.id)
    }

    def delete(Long id) {
        def utipoInstance = Utipo.get(id)
        if (!utipoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utipo.label', default: 'Utipo'), id])
            redirect(action: "list")
            return
        }

        try {
            utipoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'utipo.label', default: 'Utipo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'utipo.label', default: 'Utipo'), id])
            redirect(action: "show", id: id)
        }
    }
}
