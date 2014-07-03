package cursosbbri



import org.junit.*
import grails.test.mixin.*

@TestFor(UtituloController)
@Mock(Utitulo)
class UtituloControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/utitulo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.utituloInstanceList.size() == 0
        assert model.utituloInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.utituloInstance != null
    }

    void testSave() {
        controller.save()

        assert model.utituloInstance != null
        assert view == '/utitulo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/utitulo/show/1'
        assert controller.flash.message != null
        assert Utitulo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/utitulo/list'

        populateValidParams(params)
        def utitulo = new Utitulo(params)

        assert utitulo.save() != null

        params.id = utitulo.id

        def model = controller.show()

        assert model.utituloInstance == utitulo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/utitulo/list'

        populateValidParams(params)
        def utitulo = new Utitulo(params)

        assert utitulo.save() != null

        params.id = utitulo.id

        def model = controller.edit()

        assert model.utituloInstance == utitulo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/utitulo/list'

        response.reset()

        populateValidParams(params)
        def utitulo = new Utitulo(params)

        assert utitulo.save() != null

        // test invalid parameters in update
        params.id = utitulo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/utitulo/edit"
        assert model.utituloInstance != null

        utitulo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/utitulo/show/$utitulo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        utitulo.clearErrors()

        populateValidParams(params)
        params.id = utitulo.id
        params.version = -1
        controller.update()

        assert view == "/utitulo/edit"
        assert model.utituloInstance != null
        assert model.utituloInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/utitulo/list'

        response.reset()

        populateValidParams(params)
        def utitulo = new Utitulo(params)

        assert utitulo.save() != null
        assert Utitulo.count() == 1

        params.id = utitulo.id

        controller.delete()

        assert Utitulo.count() == 0
        assert Utitulo.get(utitulo.id) == null
        assert response.redirectedUrl == '/utitulo/list'
    }
}
