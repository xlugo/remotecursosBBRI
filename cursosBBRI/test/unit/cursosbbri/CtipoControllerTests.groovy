package cursosbbri



import org.junit.*
import grails.test.mixin.*

@TestFor(CtipoController)
@Mock(Ctipo)
class CtipoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ctipo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ctipoInstanceList.size() == 0
        assert model.ctipoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ctipoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ctipoInstance != null
        assert view == '/ctipo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ctipo/show/1'
        assert controller.flash.message != null
        assert Ctipo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ctipo/list'

        populateValidParams(params)
        def ctipo = new Ctipo(params)

        assert ctipo.save() != null

        params.id = ctipo.id

        def model = controller.show()

        assert model.ctipoInstance == ctipo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ctipo/list'

        populateValidParams(params)
        def ctipo = new Ctipo(params)

        assert ctipo.save() != null

        params.id = ctipo.id

        def model = controller.edit()

        assert model.ctipoInstance == ctipo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ctipo/list'

        response.reset()

        populateValidParams(params)
        def ctipo = new Ctipo(params)

        assert ctipo.save() != null

        // test invalid parameters in update
        params.id = ctipo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ctipo/edit"
        assert model.ctipoInstance != null

        ctipo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ctipo/show/$ctipo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ctipo.clearErrors()

        populateValidParams(params)
        params.id = ctipo.id
        params.version = -1
        controller.update()

        assert view == "/ctipo/edit"
        assert model.ctipoInstance != null
        assert model.ctipoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ctipo/list'

        response.reset()

        populateValidParams(params)
        def ctipo = new Ctipo(params)

        assert ctipo.save() != null
        assert Ctipo.count() == 1

        params.id = ctipo.id

        controller.delete()

        assert Ctipo.count() == 0
        assert Ctipo.get(ctipo.id) == null
        assert response.redirectedUrl == '/ctipo/list'
    }
}
