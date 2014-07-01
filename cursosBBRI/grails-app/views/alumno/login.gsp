<html>
 <head>
  <title>Login</title>
  <meta name="layout" content="main" />
 </head>
 <body>
  <div class="body">
   <g:if test="${flash.message}">
     <div class="message">${flash.message}</div>
   </g:if>
   <p>Iniciar sesión</p>
     <form action="handleLogin">
     <span class='nameClear'><label for="login">Sign In:</label></span>
         <div class="buttons">
      <span class="button"><g:actionSubmit value="Iniciar sesión" /></span>
     </div>
   </form>   
  </div>  
 </body>
</html>

