package cursosbbri


//import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils



class LogoutController {

    def index = {
	// TODO put any pre-logout code here
	//redirect uri: SpringSecurityUtils.securityConfig.logout.filterProcessesUrl // '/j_spring_security_logout'
		render "logout"
  }
}





