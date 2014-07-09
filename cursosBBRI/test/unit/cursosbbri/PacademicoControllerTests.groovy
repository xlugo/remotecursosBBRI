package cursosbbri



import org.junit.*
import grails.test.mixin.*

@TestFor(PacademicoController)
@Mock(Pacademico)
class PacademicoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pacademico/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pacademicoInstanceList.size() == 0
        assert model.pacademicoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.pacademicoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pacademicoInstance != null
        assert view == '/pacademico/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pacademico/show/1'
        assert controller.flash.message != null
        assert Pacademico.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pacademico/list'

        populateValidParams(params)
        def pacademico = new Pacademico(params)

        assert pacademico.save() != null

        params.id = pacademico.id

        def model = controller.show()

        assert model.pacademicoInstance == pacademico
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pacademico/list'

        populateValidParams(params)
        def pacademico = new Pacademico(params)

        assert pacademico.save() != null

        params.id = pacademico.id

        def model = controller.edit()

        assert model.pacademicoInstance == pacademico
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pacademico/list'

        response.reset()

        populateValidParams(params)
        def pacademico = new Pacademico(params)

        assert pacademico.save() != null

        // test invalid parameters in update
        params.id = pacademico.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pacademico/edit"
        assert model.pacademicoInstance != null

        pacademico.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pacademico/show/$pacademico.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pacademico.clearErrors()

        populateValidParams(params)
        params.id = pacademico.id
        params.version = -1
        controller.update()

        assert view == "/pacademico/edit"
        assert model.pacademicoInstance != null
        assert model.pacademicoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pacademico/list'

        response.reset()

        populateValidParams(params)
        def pacademico = new Pacademico(params)

        assert pacademico.save() != null
        assert Pacademico.count() == 1

        params.id = pacademico.id

        controller.delete()

        assert Pacademico.count() == 0
        assert Pacademico.get(pacademico.id) == null
        assert response.redirectedUrl == '/pacademico/list'
    }
}
