package cursosbbri



import org.junit.*
import grails.test.mixin.*

@TestFor(EstacionanoController)
@Mock(Estacionano)
class EstacionanoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/estacionano/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.estacionanoInstanceList.size() == 0
        assert model.estacionanoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.estacionanoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.estacionanoInstance != null
        assert view == '/estacionano/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/estacionano/show/1'
        assert controller.flash.message != null
        assert Estacionano.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/estacionano/list'

        populateValidParams(params)
        def estacionano = new Estacionano(params)

        assert estacionano.save() != null

        params.id = estacionano.id

        def model = controller.show()

        assert model.estacionanoInstance == estacionano
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/estacionano/list'

        populateValidParams(params)
        def estacionano = new Estacionano(params)

        assert estacionano.save() != null

        params.id = estacionano.id

        def model = controller.edit()

        assert model.estacionanoInstance == estacionano
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/estacionano/list'

        response.reset()

        populateValidParams(params)
        def estacionano = new Estacionano(params)

        assert estacionano.save() != null

        // test invalid parameters in update
        params.id = estacionano.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/estacionano/edit"
        assert model.estacionanoInstance != null

        estacionano.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/estacionano/show/$estacionano.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        estacionano.clearErrors()

        populateValidParams(params)
        params.id = estacionano.id
        params.version = -1
        controller.update()

        assert view == "/estacionano/edit"
        assert model.estacionanoInstance != null
        assert model.estacionanoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/estacionano/list'

        response.reset()

        populateValidParams(params)
        def estacionano = new Estacionano(params)

        assert estacionano.save() != null
        assert Estacionano.count() == 1

        params.id = estacionano.id

        controller.delete()

        assert Estacionano.count() == 0
        assert Estacionano.get(estacionano.id) == null
        assert response.redirectedUrl == '/estacionano/list'
    }
}
