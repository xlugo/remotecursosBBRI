package cursosbbri



import org.junit.*
import grails.test.mixin.*

@TestFor(UfuncionController)
@Mock(Ufuncion)
class UfuncionControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ufuncion/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ufuncionInstanceList.size() == 0
        assert model.ufuncionInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ufuncionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ufuncionInstance != null
        assert view == '/ufuncion/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ufuncion/show/1'
        assert controller.flash.message != null
        assert Ufuncion.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ufuncion/list'

        populateValidParams(params)
        def ufuncion = new Ufuncion(params)

        assert ufuncion.save() != null

        params.id = ufuncion.id

        def model = controller.show()

        assert model.ufuncionInstance == ufuncion
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ufuncion/list'

        populateValidParams(params)
        def ufuncion = new Ufuncion(params)

        assert ufuncion.save() != null

        params.id = ufuncion.id

        def model = controller.edit()

        assert model.ufuncionInstance == ufuncion
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ufuncion/list'

        response.reset()

        populateValidParams(params)
        def ufuncion = new Ufuncion(params)

        assert ufuncion.save() != null

        // test invalid parameters in update
        params.id = ufuncion.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ufuncion/edit"
        assert model.ufuncionInstance != null

        ufuncion.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ufuncion/show/$ufuncion.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ufuncion.clearErrors()

        populateValidParams(params)
        params.id = ufuncion.id
        params.version = -1
        controller.update()

        assert view == "/ufuncion/edit"
        assert model.ufuncionInstance != null
        assert model.ufuncionInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ufuncion/list'

        response.reset()

        populateValidParams(params)
        def ufuncion = new Ufuncion(params)

        assert ufuncion.save() != null
        assert Ufuncion.count() == 1

        params.id = ufuncion.id

        controller.delete()

        assert Ufuncion.count() == 0
        assert Ufuncion.get(ufuncion.id) == null
        assert response.redirectedUrl == '/ufuncion/list'
    }
}
