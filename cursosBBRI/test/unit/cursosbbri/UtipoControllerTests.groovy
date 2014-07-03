package cursosbbri



import org.junit.*
import grails.test.mixin.*

@TestFor(UtipoController)
@Mock(Utipo)
class UtipoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/utipo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.utipoInstanceList.size() == 0
        assert model.utipoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.utipoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.utipoInstance != null
        assert view == '/utipo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/utipo/show/1'
        assert controller.flash.message != null
        assert Utipo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/utipo/list'

        populateValidParams(params)
        def utipo = new Utipo(params)

        assert utipo.save() != null

        params.id = utipo.id

        def model = controller.show()

        assert model.utipoInstance == utipo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/utipo/list'

        populateValidParams(params)
        def utipo = new Utipo(params)

        assert utipo.save() != null

        params.id = utipo.id

        def model = controller.edit()

        assert model.utipoInstance == utipo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/utipo/list'

        response.reset()

        populateValidParams(params)
        def utipo = new Utipo(params)

        assert utipo.save() != null

        // test invalid parameters in update
        params.id = utipo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/utipo/edit"
        assert model.utipoInstance != null

        utipo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/utipo/show/$utipo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        utipo.clearErrors()

        populateValidParams(params)
        params.id = utipo.id
        params.version = -1
        controller.update()

        assert view == "/utipo/edit"
        assert model.utipoInstance != null
        assert model.utipoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/utipo/list'

        response.reset()

        populateValidParams(params)
        def utipo = new Utipo(params)

        assert utipo.save() != null
        assert Utipo.count() == 1

        params.id = utipo.id

        controller.delete()

        assert Utipo.count() == 0
        assert Utipo.get(utipo.id) == null
        assert response.redirectedUrl == '/utipo/list'
    }
}
