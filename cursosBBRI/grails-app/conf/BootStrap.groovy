import seguridad.*

class BootStrap {

    def init = { servletContext ->
		
		def adminRole = Rol.findOrSaveWhere(authority:'ROLE_ADMIN')
		 def user = Usuario.findOrSaveWhere(username:'xavier.lugo@gmail.com',password:'lozano35')
		 if (!user.authorities.contains(adminRole)){
			 UsuarioRol.create(user, adminRole,true)
		 }
		 
    }
    def destroy = {
    }
}
