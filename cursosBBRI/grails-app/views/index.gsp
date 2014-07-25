<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="inicial"/>
		<title>Cursos blackboard</title>
		
	</head>
	<body>
	
		
		<div id="page-body" role="main">
			<h1>Panel de control</h1>
			<p>Para poder utilizar el sistema debes contar con un nombre de usuario y contraseña, gracias.</p>
			<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>			
				<div id="controller-list" role="navigation">
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.shortName}</g:link></li>
					</g:each>
				</ul>
			</div>		
		</div>
		
	</body>
</html>
