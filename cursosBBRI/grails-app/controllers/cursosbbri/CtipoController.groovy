package cursosbbri

import org.springframework.dao.DataIntegrityViolationException

class CtipoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ctipoInstanceList: Ctipo.list(params), ctipoInstanceTotal: Ctipo.count()]
    }

    def create() {
        [ctipoInstance: new Ctipo(params)]
    }

    def save() {
        def ctipoInstance = new Ctipo(params)
        if (!ctipoInstance.save(flush: true)) {
            render(view: "create", model: [ctipoInstance: ctipoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ctipo.label', default: 'Ctipo'), ctipoInstance.id])
        redirect(action: "show", id: ctipoInstance.id)
    }

    def show(Long id) {
        def ctipoInstance = Ctipo.get(id)
        if (!ctipoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ctipo.label', default: 'Ctipo'), id])
            redirect(action: "list")
            return
        }

        [ctipoInstance: ctipoInstance]
    }

    def edit(Long id) {
        def ctipoInstance = Ctipo.get(id)
        if (!ctipoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ctipo.label', default: 'Ctipo'), id])
            redirect(action: "list")
            return
        }

        [ctipoInstance: ctipoInstance]
    }

    def update(Long id, Long version) {
        def ctipoInstance = Ctipo.get(id)
        if (!ctipoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ctipo.label', default: 'Ctipo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ctipoInstance.version > version) {
                ctipoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ctipo.label', default: 'Ctipo')] as Object[],
                          "Another user has updated this Ctipo while you were editing")
                render(view: "edit", model: [ctipoInstance: ctipoInstance])
                return
            }
        }

        ctipoInstance.properties = params

        if (!ctipoInstance.save(flush: true)) {
            render(view: "edit", model: [ctipoInstance: ctipoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ctipo.label', default: 'Ctipo'), ctipoInstance.id])
        redirect(action: "show", id: ctipoInstance.id)
    }

    def delete(Long id) {
        def ctipoInstance = Ctipo.get(id)
        if (!ctipoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ctipo.label', default: 'Ctipo'), id])
            redirect(action: "list")
            return
        }

        try {
            ctipoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ctipo.label', default: 'Ctipo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ctipo.label', default: 'Ctipo'), id])
            redirect(action: "show", id: id)
        }
    }
}
