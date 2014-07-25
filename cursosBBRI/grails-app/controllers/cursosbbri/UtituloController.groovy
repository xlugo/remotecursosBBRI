package cursosbbri

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])

class UtituloController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [utituloInstanceList: Utitulo.list(params), utituloInstanceTotal: Utitulo.count()]
    }

    def create() {
        [utituloInstance: new Utitulo(params)]
    }

    def save() {
        def utituloInstance = new Utitulo(params)
        if (!utituloInstance.save(flush: true)) {
            render(view: "create", model: [utituloInstance: utituloInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'utitulo.label', default: 'Utitulo'), utituloInstance.id])
        redirect(action: "show", id: utituloInstance.id)
    }

    def show(Long id) {
        def utituloInstance = Utitulo.get(id)
        if (!utituloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utitulo.label', default: 'Utitulo'), id])
            redirect(action: "list")
            return
        }

        [utituloInstance: utituloInstance]
    }

    def edit(Long id) {
        def utituloInstance = Utitulo.get(id)
        if (!utituloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utitulo.label', default: 'Utitulo'), id])
            redirect(action: "list")
            return
        }

        [utituloInstance: utituloInstance]
    }

    def update(Long id, Long version) {
        def utituloInstance = Utitulo.get(id)
        if (!utituloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utitulo.label', default: 'Utitulo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (utituloInstance.version > version) {
                utituloInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'utitulo.label', default: 'Utitulo')] as Object[],
                          "Another user has updated this Utitulo while you were editing")
                render(view: "edit", model: [utituloInstance: utituloInstance])
                return
            }
        }

        utituloInstance.properties = params

        if (!utituloInstance.save(flush: true)) {
            render(view: "edit", model: [utituloInstance: utituloInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'utitulo.label', default: 'Utitulo'), utituloInstance.id])
        redirect(action: "show", id: utituloInstance.id)
    }

    def delete(Long id) {
        def utituloInstance = Utitulo.get(id)
        if (!utituloInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utitulo.label', default: 'Utitulo'), id])
            redirect(action: "list")
            return
        }

        try {
            utituloInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'utitulo.label', default: 'Utitulo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'utitulo.label', default: 'Utitulo'), id])
            redirect(action: "show", id: id)
        }
    }
}
