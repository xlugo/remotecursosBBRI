package cursosbbri



import org.junit.*
import grails.test.mixin.*

@TestFor(CmodalidadController)
@Mock(Cmodalidad)
class CmodalidadControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/cmodalidad/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.cmodalidadInstanceList.size() == 0
        assert model.cmodalidadInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.cmodalidadInstance != null
    }

    void testSave() {
        controller.save()

        assert model.cmodalidadInstance != null
        assert view == '/cmodalidad/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/cmodalidad/show/1'
        assert controller.flash.message != null
        assert Cmodalidad.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/cmodalidad/list'

        populateValidParams(params)
        def cmodalidad = new Cmodalidad(params)

        assert cmodalidad.save() != null

        params.id = cmodalidad.id

        def model = controller.show()

        assert model.cmodalidadInstance == cmodalidad
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/cmodalidad/list'

        populateValidParams(params)
        def cmodalidad = new Cmodalidad(params)

        assert cmodalidad.save() != null

        params.id = cmodalidad.id

        def model = controller.edit()

        assert model.cmodalidadInstance == cmodalidad
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/cmodalidad/list'

        response.reset()

        populateValidParams(params)
        def cmodalidad = new Cmodalidad(params)

        assert cmodalidad.save() != null

        // test invalid parameters in update
        params.id = cmodalidad.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/cmodalidad/edit"
        assert model.cmodalidadInstance != null

        cmodalidad.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/cmodalidad/show/$cmodalidad.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        cmodalidad.clearErrors()

        populateValidParams(params)
        params.id = cmodalidad.id
        params.version = -1
        controller.update()

        assert view == "/cmodalidad/edit"
        assert model.cmodalidadInstance != null
        assert model.cmodalidadInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/cmodalidad/list'

        response.reset()

        populateValidParams(params)
        def cmodalidad = new Cmodalidad(params)

        assert cmodalidad.save() != null
        assert Cmodalidad.count() == 1

        params.id = cmodalidad.id

        controller.delete()

        assert Cmodalidad.count() == 0
        assert Cmodalidad.get(cmodalidad.id) == null
        assert response.redirectedUrl == '/cmodalidad/list'
    }
}
