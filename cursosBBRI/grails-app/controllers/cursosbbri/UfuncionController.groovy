package cursosbbri

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])

class UfuncionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ufuncionInstanceList: Ufuncion.list(params), ufuncionInstanceTotal: Ufuncion.count()]
    }

    def create() {
        [ufuncionInstance: new Ufuncion(params)]
    }

    def save() {
        def ufuncionInstance = new Ufuncion(params)
        if (!ufuncionInstance.save(flush: true)) {
            render(view: "create", model: [ufuncionInstance: ufuncionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ufuncion.label', default: 'Ufuncion'), ufuncionInstance.id])
        redirect(action: "show", id: ufuncionInstance.id)
    }

    def show(Long id) {
        def ufuncionInstance = Ufuncion.get(id)
        if (!ufuncionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ufuncion.label', default: 'Ufuncion'), id])
            redirect(action: "list")
            return
        }

        [ufuncionInstance: ufuncionInstance]
    }

    def edit(Long id) {
        def ufuncionInstance = Ufuncion.get(id)
        if (!ufuncionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ufuncion.label', default: 'Ufuncion'), id])
            redirect(action: "list")
            return
        }

        [ufuncionInstance: ufuncionInstance]
    }

    def update(Long id, Long version) {
        def ufuncionInstance = Ufuncion.get(id)
        if (!ufuncionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ufuncion.label', default: 'Ufuncion'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ufuncionInstance.version > version) {
                ufuncionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ufuncion.label', default: 'Ufuncion')] as Object[],
                          "Another user has updated this Ufuncion while you were editing")
                render(view: "edit", model: [ufuncionInstance: ufuncionInstance])
                return
            }
        }

        ufuncionInstance.properties = params

        if (!ufuncionInstance.save(flush: true)) {
            render(view: "edit", model: [ufuncionInstance: ufuncionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ufuncion.label', default: 'Ufuncion'), ufuncionInstance.id])
        redirect(action: "show", id: ufuncionInstance.id)
    }

    def delete(Long id) {
        def ufuncionInstance = Ufuncion.get(id)
        if (!ufuncionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ufuncion.label', default: 'Ufuncion'), id])
            redirect(action: "list")
            return
        }

        try {
            ufuncionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ufuncion.label', default: 'Ufuncion'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ufuncion.label', default: 'Ufuncion'), id])
            redirect(action: "show", id: id)
        }
    }
}
