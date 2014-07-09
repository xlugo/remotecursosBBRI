package cursosbbri



import org.junit.*
import grails.test.mixin.*

@TestFor(CtituloController)
@Mock(Ctitulo)
class CtituloControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ctitulo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ctituloInstanceList.size() == 0
        assert model.ctituloInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ctituloInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ctituloInstance != null
        assert view == '/ctitulo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ctitulo/show/1'
        assert controller.flash.message != null
        assert Ctitulo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ctitulo/list'

        populateValidParams(params)
        def ctitulo = new Ctitulo(params)

        assert ctitulo.save() != null

        params.id = ctitulo.id

        def model = controller.show()

        assert model.ctituloInstance == ctitulo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ctitulo/list'

        populateValidParams(params)
        def ctitulo = new Ctitulo(params)

        assert ctitulo.save() != null

        params.id = ctitulo.id

        def model = controller.edit()

        assert model.ctituloInstance == ctitulo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ctitulo/list'

        response.reset()

        populateValidParams(params)
        def ctitulo = new Ctitulo(params)

        assert ctitulo.save() != null

        // test invalid parameters in update
        params.id = ctitulo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ctitulo/edit"
        assert model.ctituloInstance != null

        ctitulo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ctitulo/show/$ctitulo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ctitulo.clearErrors()

        populateValidParams(params)
        params.id = ctitulo.id
        params.version = -1
        controller.update()

        assert view == "/ctitulo/edit"
        assert model.ctituloInstance != null
        assert model.ctituloInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ctitulo/list'

        response.reset()

        populateValidParams(params)
        def ctitulo = new Ctitulo(params)

        assert ctitulo.save() != null
        assert Ctitulo.count() == 1

        params.id = ctitulo.id

        controller.delete()

        assert Ctitulo.count() == 0
        assert Ctitulo.get(ctitulo.id) == null
        assert response.redirectedUrl == '/ctitulo/list'
    }
}
