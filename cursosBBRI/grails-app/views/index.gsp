<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Cursos blackboard</title>
		
	</head>
	<body>
	
		
		<div id="page-body" role="main">
			<h1>Hola</h1>
			Página principal de la aplicación	
			
				<div id="controller-list" role="navigation">
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>		
		</div>
		
	</body>
</html>
