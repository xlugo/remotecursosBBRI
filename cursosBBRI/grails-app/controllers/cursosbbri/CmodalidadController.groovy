package cursosbbri

import org.springframework.dao.DataIntegrityViolationException

class CmodalidadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [cmodalidadInstanceList: Cmodalidad.list(params), cmodalidadInstanceTotal: Cmodalidad.count()]
    }

    def create() {
        [cmodalidadInstance: new Cmodalidad(params)]
    }

    def save() {
        def cmodalidadInstance = new Cmodalidad(params)
        if (!cmodalidadInstance.save(flush: true)) {
            render(view: "create", model: [cmodalidadInstance: cmodalidadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'cmodalidad.label', default: 'Cmodalidad'), cmodalidadInstance.id])
        redirect(action: "show", id: cmodalidadInstance.id)
    }

    def show(Long id) {
        def cmodalidadInstance = Cmodalidad.get(id)
        if (!cmodalidadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cmodalidad.label', default: 'Cmodalidad'), id])
            redirect(action: "list")
            return
        }

        [cmodalidadInstance: cmodalidadInstance]
    }

    def edit(Long id) {
        def cmodalidadInstance = Cmodalidad.get(id)
        if (!cmodalidadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cmodalidad.label', default: 'Cmodalidad'), id])
            redirect(action: "list")
            return
        }

        [cmodalidadInstance: cmodalidadInstance]
    }

    def update(Long id, Long version) {
        def cmodalidadInstance = Cmodalidad.get(id)
        if (!cmodalidadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cmodalidad.label', default: 'Cmodalidad'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (cmodalidadInstance.version > version) {
                cmodalidadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cmodalidad.label', default: 'Cmodalidad')] as Object[],
                          "Another user has updated this Cmodalidad while you were editing")
                render(view: "edit", model: [cmodalidadInstance: cmodalidadInstance])
                return
            }
        }

        cmodalidadInstance.properties = params

        if (!cmodalidadInstance.save(flush: true)) {
            render(view: "edit", model: [cmodalidadInstance: cmodalidadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'cmodalidad.label', default: 'Cmodalidad'), cmodalidadInstance.id])
        redirect(action: "show", id: cmodalidadInstance.id)
    }

    def delete(Long id) {
        def cmodalidadInstance = Cmodalidad.get(id)
        if (!cmodalidadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cmodalidad.label', default: 'Cmodalidad'), id])
            redirect(action: "list")
            return
        }

        try {
            cmodalidadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'cmodalidad.label', default: 'Cmodalidad'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cmodalidad.label', default: 'Cmodalidad'), id])
            redirect(action: "show", id: id)
        }
    }
}
